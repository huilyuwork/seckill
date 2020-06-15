package org.seckill.dao;

import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

public interface SeckillDao {

    /**
     * reduce inventory
     * @param seckillId
     * @param KillTime
     * @return 如果影响行数>1, 表示更新的记录行数
     */
    int reduceNumber(long seckillId, Date KillTime);

    /**
     * @param seckillId
     * @return
     */
    Seckill queryById(long seckillId);

    /**
     * according offset to query seckill product list
     * @param offset
     * @param limit
     * @return
     */
    List<Seckill> queryAll(int offset, int limit);
}
