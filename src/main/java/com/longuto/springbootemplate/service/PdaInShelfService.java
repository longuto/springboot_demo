package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.base.service.IService;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.pojo.po.PdaInShelf;
import com.longuto.springbootemplate.pojo.po.PubPick;
import com.longuto.springbootemplate.pojo.vo.PdaInPickVo;

public interface PdaInShelfService extends IService<PdaInShelf> {

    public PdaInPickVo upperShelf(PubPick pubPick, PdaInShelf pdaInShelf);

    public APIResponse downShelf(PubPick pubPick, PdaInShelf pdaInShelf);
}
