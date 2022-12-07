package com.example.uploadfile;

import com.example.bean.BoardVO;
import com.example.dao.BoardDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

public class FileUpload {
    public BoardVO uploadPhoto(HttpServletRequest request) {
        String fileName = ""; //업로드 되는 파일 이름 저장용
        int sizeLimit = 15*1024*1024; //파일 크기(15 MB)

        String realPath = request.getServletContext().getRealPath("upload");
//        System.out.println(realPath);

        File dir = new File(realPath);
        if(!dir.exists()) dir.mkdir();

        BoardVO one = null;
        MultipartRequest multipartRequest = null;

        try {
            multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
            fileName = multipartRequest.getFilesystemName("photo");

            one = new BoardVO();
            String seq = multipartRequest.getParameter("seq");

            if (seq != null && !seq.equals("")) one.setSeq(Integer.parseInt(seq));
            one.setCategory(multipartRequest.getParameter("category"));
            one.setTitle(multipartRequest.getParameter("title"));
            one.setWriter(multipartRequest.getParameter("writer"));
            one.setContent(multipartRequest.getParameter("content"));

            if (seq != null && !seq.equals("")) {
                BoardDAO boardDAO = new BoardDAO();
                String oldFileName = boardDAO.getPhotoFilename(Integer.parseInt(seq));

                if (fileName != null && oldFileName != null)
                    FileUpload.deleteFile(request, oldFileName);
                else if (fileName == null && oldFileName != null)
                    fileName = oldFileName;
            }
            one.setFileName(fileName);

        } catch (IOException e) {
            e.printStackTrace();
        }
//        System.out.println("");
        return one;
    }

    public static void deleteFile(HttpServletRequest request, String fileName) {
        String path = request.getServletContext().getRealPath("upload");

        File file = new File(path + "/" + fileName);
        if (file.exists()) file.delete();
    }
}
