FOR combo_details CURSOR FOR
    SELECT * FROM combofile
    WHERE cbitem = in_product
DO
      IF cbfld1 > 0 THEN
          PIPE(cbitem, cbchild1, cbqty01);
      END IF;
      IF cbfld2 > 0 THEN
          PIPE(cbitem, cbchild2, cbqty02);
      END IF;
      IF cbfld3 > 0 THEN
          PIPE(cbitem, cbchild3, cbqty03);
      END IF;
      IF cbfld4 > 0 THEN
          PIPE(cbitem, cbchild4, cbqty04);
      END IF;

END FOR;
