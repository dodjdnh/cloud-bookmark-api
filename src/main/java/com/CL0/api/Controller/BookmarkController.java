package com.CL0.api.Controller;

import com.CL0.api.Entity.Bookmark;
import com.CL0.api.Mapper.BookmarkMapper;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.awt.print.Book;
import java.util.List;

@RestController
@RequestMapping("/api/bookmarks")
public class BookmarkController {
    @Resource
    private BookmarkMapper bookmarkMapper;

    @GetMapping("/list")
    public List<Bookmark> list() {
        return bookmarkMapper.selectList(null);
    }
}
