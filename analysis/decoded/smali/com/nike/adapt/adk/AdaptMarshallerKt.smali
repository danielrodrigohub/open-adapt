.class public final Lcom/nike/adapt/adk/AdaptMarshallerKt;
.super Ljava/lang/Object;
.source "AdaptMarshaller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/AdaptMarshallerKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final firstOrDefault([Ljava/lang/Object;Ljava/lang/Object;Lqd/l;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Lqd/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {p2, v2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    return-object p1
.end method

.method public static final getAdaptKitColorPreset(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)Lba/f;
    .locals 3

    const-string v0, "preset"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v0, Lba/f;->l:Lba/f$a;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result v1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result v2

    invoke-virtual {p0}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lba/f$a;->b(III)Lba/f;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5
    sget-object p0, Lba/f;->m:Lba/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object p0, Lba/f;->m:Lba/f;

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static final getAdaptKitColorPreset(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lba/f;
    .locals 3

    const-string v0, "shoeLed"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lba/f;->l:Lba/f$a;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getRed()I

    move-result v1

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getGreen()I

    move-result v2

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->getAdaptColorPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->getBlue()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lba/f$a;->b(III)Lba/f;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lba/f;->m:Lba/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p0, Lba/f;->m:Lba/f;

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static final parse(Lfb/c;)Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    .line 2
    iget-object p0, p0, Lfb/c;->h:Ljava/lang/String;

    .line 3
    invoke-direct {v0, p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final parseFrom(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;",
            ">;)",
            "Ljava/util/List<",
            "Lga/a;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    .line 3
    sget-object v2, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lga/a$d;->k:Lga/a$d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    sget-object v2, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapTraining;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapTraining;

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lga/a$c;->k:Lga/a$c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    sget-object v2, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lga/a$g;->k:Lga/a$g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final parseModes(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/e;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptDeviceMode;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/e;

    .line 3
    new-instance v9, Lcom/nike/adapt/adk/model/AdaptDeviceMode;

    .line 4
    iget-object v3, v1, Lea/e;->h:Ljava/lang/String;

    .line 5
    iget-object v4, v1, Lea/e;->i:Ljava/lang/String;

    .line 6
    iget-boolean v5, v1, Lea/e;->j:Z

    .line 7
    iget-object v6, v1, Lea/e;->k:Lea/c;

    .line 8
    iget-object v7, v1, Lea/e;->l:Lea/c;

    .line 9
    iget-object v8, v1, Lea/e;->m:Ljava/lang/Integer;

    move-object v2, v9

    .line 10
    invoke-direct/range {v2 .. v8}, Lcom/nike/adapt/adk/model/AdaptDeviceMode;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final parseTo(Lba/i;ZLjava/lang/String;)La8/d;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoeId"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 190
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "gmt"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const-string v3, "getTimeZone(\"gmt\")"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 192
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "simpleDateFormat.format(date)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget v1, Lh8/a;->a:I

    .line 194
    sget-object v1, Lh8/c;->b:Lh8/c;

    .line 195
    invoke-virtual {v1}, Lh8/c;->R()Lcom/nike/adapt/presenter/profile/AdaptUser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getNuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 196
    :cond_1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/i;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)La8/d;

    move-result-object p0

    return-object p0
.end method

.method public static final parseTo(Lba/i;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)La8/d;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoeId"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeStamp"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nuid"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/i;)La8/l;

    move-result-object v4

    if-eqz p1, :cond_0

    .line 198
    new-instance p0, La8/i;

    new-instance p1, La8/h;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, La8/h;-><init>(Ljava/lang/String;Ljava/lang/String;La8/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, La8/i;-><init>(La8/h;)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance p0, La8/j;

    new-instance p1, La8/h;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, La8/h;-><init>(Ljava/lang/String;Ljava/lang/String;La8/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, La8/j;-><init>(La8/h;)V

    :goto_0
    return-object p0
.end method

.method public static final parseTo(Lba/i;)La8/l;
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lba/i;->l:Lba/k0;

    .line 7
    new-instance v3, La8/k;

    .line 8
    iget v2, v1, Lba/k0;->i:I

    .line 9
    iget v4, v1, Lba/k0;->j:I

    .line 10
    iget v5, v1, Lba/k0;->k:I

    .line 11
    iget v1, v1, Lba/k0;->h:I

    .line 12
    invoke-direct {v3, v2, v4, v5, v1}, La8/k;-><init>(IIII)V

    .line 13
    iget-object v1, v0, Lba/i;->i:Lba/n;

    .line 14
    new-instance v4, La8/b;

    .line 15
    iget v2, v1, Lba/n;->h:I

    .line 16
    iget v1, v1, Lba/n;->i:I

    .line 17
    invoke-direct {v4, v2, v1}, La8/b;-><init>(II)V

    .line 18
    iget-object v1, v0, Lba/i;->m:Lba/o0;

    .line 19
    new-instance v5, La8/m;

    .line 20
    iget v2, v1, Lba/o0;->h:I

    .line 21
    iget v6, v1, Lba/o0;->j:I

    .line 22
    iget v7, v1, Lba/o0;->k:I

    .line 23
    iget v1, v1, Lba/o0;->i:I

    .line 24
    invoke-direct {v5, v2, v6, v7, v1}, La8/m;-><init>(IIII)V

    .line 25
    iget-object v1, v0, Lba/i;->j:Lba/r;

    .line 26
    new-instance v16, La8/c;

    .line 27
    iget v7, v1, Lba/r;->h:I

    .line 28
    iget v8, v1, Lba/r;->i:I

    .line 29
    iget v9, v1, Lba/r;->j:I

    .line 30
    iget v10, v1, Lba/r;->k:I

    .line 31
    iget v11, v1, Lba/r;->l:I

    .line 32
    iget v12, v1, Lba/r;->m:I

    .line 33
    iget v13, v1, Lba/r;->n:I

    .line 34
    iget v14, v1, Lba/r;->o:I

    .line 35
    iget v15, v1, Lba/r;->p:I

    move-object/from16 v6, v16

    .line 36
    invoke-direct/range {v6 .. v15}, La8/c;-><init>(IIIIIIIII)V

    .line 37
    iget-object v1, v0, Lba/i;->n:Lba/w;

    .line 38
    new-instance v7, La8/e;

    .line 39
    iget v2, v1, Lba/w;->h:I

    .line 40
    iget v1, v1, Lba/w;->i:I

    .line 41
    invoke-direct {v7, v2, v1}, La8/e;-><init>(II)V

    .line 42
    iget-object v1, v0, Lba/i;->k:Lba/i0;

    .line 43
    new-instance v8, La8/g;

    .line 44
    iget v2, v1, Lba/i0;->i:I

    .line 45
    iget v6, v1, Lba/i0;->h:I

    .line 46
    iget v9, v1, Lba/i0;->k:I

    .line 47
    iget v10, v1, Lba/i0;->p:I

    .line 48
    iget v11, v1, Lba/i0;->l:I

    .line 49
    iget v12, v1, Lba/i0;->m:I

    .line 50
    iget v13, v1, Lba/i0;->j:I

    .line 51
    iget v14, v1, Lba/i0;->n:I

    .line 52
    iget v1, v1, Lba/i0;->o:I

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    move-object/from16 v17, v8

    move/from16 v18, v2

    move/from16 v19, v6

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v1

    .line 53
    invoke-direct/range {v17 .. v29}, La8/g;-><init>(IIIIIIIIIIII)V

    .line 54
    iget-object v0, v0, Lba/i;->h:Lba/m;

    .line 55
    new-instance v9, La8/a;

    .line 56
    iget v1, v0, Lba/m;->o:I

    .line 57
    iget v2, v0, Lba/m;->i:I

    .line 58
    iget v6, v0, Lba/m;->j:I

    .line 59
    iget v10, v0, Lba/m;->h:I

    .line 60
    iget v11, v0, Lba/m;->k:I

    .line 61
    iget v12, v0, Lba/m;->m:I

    .line 62
    iget v13, v0, Lba/m;->l:I

    .line 63
    iget v14, v0, Lba/m;->n:I

    .line 64
    iget v0, v0, Lba/m;->p:I

    move-object/from16 v17, v9

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v6

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v0

    .line 65
    invoke-direct/range {v17 .. v26}, La8/a;-><init>(IIIIIIIII)V

    .line 66
    new-instance v0, La8/l;

    move-object v2, v0

    move-object/from16 v6, v16

    invoke-direct/range {v2 .. v9}, La8/l;-><init>(La8/k;La8/b;La8/m;La8/c;La8/e;La8/g;La8/a;)V

    return-object v0
.end method

.method public static final parseTo(Lcom/nike/adapt/adk/model/AdaptAnimation;)Lba/a;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lba/a;

    .line 85
    new-instance v1, Lea/d;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptAnimation;->getColor()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object v2

    invoke-static {v2}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->getAdaptKitColorPreset(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)Lba/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lea/d;-><init>(Lba/f;)V

    .line 86
    new-instance v2, Lba/d;

    .line 87
    new-instance v4, Lba/f0;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptAnimation;->getPrequel()I

    move-result v3

    invoke-direct {v4, v3}, Lba/f0;-><init>(I)V

    .line 88
    new-instance v5, Lba/t;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptAnimation;->getEnter()I

    move-result v3

    invoke-direct {v5, v3}, Lba/t;-><init>(I)V

    .line 89
    new-instance v6, Lba/e0;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptAnimation;->getOn()I

    move-result v3

    invoke-direct {v6, v3}, Lba/e0;-><init>(I)V

    .line 90
    new-instance v7, Lba/u;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptAnimation;->getExit()I

    move-result v3

    invoke-direct {v7, v3}, Lba/u;-><init>(I)V

    .line 91
    new-instance v8, Lba/d0;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptAnimation;->getOff()I

    move-result v3

    invoke-direct {v8, v3}, Lba/d0;-><init>(I)V

    move-object v3, v2

    .line 92
    invoke-direct/range {v3 .. v8}, Lba/d;-><init>(Lba/f0;Lba/t;Lba/e0;Lba/u;Lba/d0;)V

    .line 93
    new-instance v3, Lba/s;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptAnimation;->getDuration()I

    move-result p0

    invoke-direct {v3, p0}, Lba/s;-><init>(I)V

    const/4 p0, 0x0

    .line 94
    invoke-direct {v0, v1, v2, v3, p0}, Lba/a;-><init>(Lea/d;Lba/d;Lba/s;I)V

    return-object v0
.end method

.method public static final parseTo(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;I)Lba/h;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->getFrames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Ljava/util/List;)Lfd/e;

    move-result-object v0

    .line 160
    iget-object v1, v0, Lfd/e;->h:Ljava/lang/Object;

    .line 161
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 162
    iget-object v0, v0, Lfd/e;->i:Ljava/lang/Object;

    .line 163
    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .line 164
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-float p1, v2

    div-float/2addr p1, v1

    .line 165
    new-instance v0, Lba/h;

    invoke-virtual {p0}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->getId()I

    move-result v3

    float-to-int v4, p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, v0

    .line 166
    invoke-direct/range {v2 .. v8}, Lba/h;-><init>(IILjava/util/List;IZZ)V

    return-object v0
.end method

.method public static final parseTo(Lba/g$d;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 184
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->UNRECOGNIZED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    goto :goto_0

    .line 185
    :cond_0
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->INTERRUPTED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    goto :goto_0

    .line 186
    :cond_1
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->QUEUED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    goto :goto_0

    .line 187
    :cond_2
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->STOPPED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    goto :goto_0

    .line 188
    :cond_3
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;->RUNNING:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    :goto_0
    return-object p0
.end method

.method public static final parseTo(Lba/g$c;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 78
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->UNRECOGNIZED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    goto :goto_0

    :cond_0
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0

    .line 79
    :cond_1
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->CRITICAL_BATTERY:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    goto :goto_0

    .line 80
    :cond_2
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->BATTERY_OVERTEMP:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    goto :goto_0

    .line 81
    :cond_3
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->CANCELED:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    goto :goto_0

    .line 82
    :cond_4
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->TIMEOUT:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    goto :goto_0

    .line 83
    :cond_5
    sget-object p0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;->NOT_SET:Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    :goto_0
    return-object p0
.end method

.method public static final parseTo(Lba/g;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    .line 177
    iget v1, p0, Lba/g;->h:I

    .line 178
    iget v2, p0, Lba/g;->i:I

    .line 179
    iget-object v3, p0, Lba/g;->j:Lba/g$d;

    .line 180
    invoke-static {v3}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/g$d;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    move-result-object v3

    .line 181
    iget-object p0, p0, Lba/g;->k:Lba/g$c;

    .line 182
    invoke-static {p0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/g$c;)Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;-><init>(IILcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AnimationEndingState;)V

    return-object v0
.end method

.method public static final parseTo(Lfa/a;)Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfa/a;->a:Lfa/b;

    .line 2
    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lfa/b;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lfa/a;->b:Lfa/b;

    .line 4
    invoke-static {p0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lfa/b;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    move-result-object p0

    .line 5
    new-instance v1, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    invoke-direct {v1, v0, p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;)V

    return-object v1
.end method

.method public static final parseTo(Lfa/i;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    instance-of v0, p0, Lfa/i$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;

    check-cast p0, Lfa/i$a;

    .line 117
    iget-object p0, p0, Lfa/i$a;->h:Lba/e;

    .line 118
    invoke-static {p0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lba/e;)Lcom/nike/adapt/adk/model/Battery;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$BatteryTooLow;-><init>(Lcom/nike/adapt/adk/model/Battery;)V

    goto :goto_0

    .line 119
    :cond_0
    instance-of v0, p0, Lfa/i$b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Completed;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Completed;

    goto :goto_0

    .line 120
    :cond_1
    instance-of v0, p0, Lfa/i$c;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$ConnectionLost;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$ConnectionLost;

    goto :goto_0

    .line 121
    :cond_2
    instance-of v0, p0, Lfa/i$d;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Failure;

    goto :goto_0

    .line 122
    :cond_3
    instance-of v0, p0, Lfa/i$e;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$FetchingData;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$FetchingData;

    goto :goto_0

    .line 123
    :cond_4
    instance-of v0, p0, Lfa/i$f;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Flashing;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Flashing;

    goto :goto_0

    .line 124
    :cond_5
    instance-of v0, p0, Lfa/i$g;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    check-cast p0, Lfa/i$g;

    .line 125
    iget p0, p0, Lfa/i$g;->h:F

    .line 126
    invoke-direct {v0, p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;-><init>(F)V

    goto :goto_0

    .line 127
    :cond_6
    instance-of v0, p0, Lfa/i$h;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$NoUpdateAvailable;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$NoUpdateAvailable;

    goto :goto_0

    .line 128
    :cond_7
    instance-of v0, p0, Lfa/i$i;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$NotStarted;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$NotStarted;

    goto :goto_0

    .line 129
    :cond_8
    instance-of p0, p0, Lfa/i$j;

    if-eqz p0, :cond_9

    sget-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Reconnecting;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Reconnecting;

    :goto_0
    return-object v0

    :cond_9
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0
.end method

.method public static final parseTo(Lfa/b;)Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    instance-of v0, p0, Lfa/b$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;

    new-instance v1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-interface {p0}, Lfa/b;->getCurrentVersion()Lfb/c;

    move-result-object p0

    .line 96
    iget-object p0, p0, Lfb/c;->h:Ljava/lang/String;

    .line 97
    invoke-direct {v1, p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p0, Lfa/b$a;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$ErrorOccurred;

    .line 99
    new-instance v1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-interface {p0}, Lfa/b;->getCurrentVersion()Lfb/c;

    move-result-object v2

    .line 100
    iget-object v2, v2, Lfb/c;->h:Ljava/lang/String;

    .line 101
    invoke-direct {v1, v2}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    .line 102
    check-cast p0, Lfa/b$a;

    .line 103
    iget-object p0, p0, Lfa/b$a;->i:Ljava/lang/String;

    .line 104
    invoke-direct {v0, v1, p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$ErrorOccurred;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    instance-of v0, p0, Lfa/b$c;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    .line 106
    new-instance v2, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-interface {p0}, Lfa/b;->getCurrentVersion()Lfb/c;

    move-result-object v1

    .line 107
    iget-object v1, v1, Lfb/c;->h:Ljava/lang/String;

    .line 108
    invoke-direct {v2, v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    .line 109
    check-cast p0, Lfa/b$c;

    .line 110
    iget-boolean v3, p0, Lfa/b$c;->i:Z

    .line 111
    iget-object v1, p0, Lfa/b$c;->j:Lfb/c;

    .line 112
    iget-object v4, v1, Lfb/c;->h:Ljava/lang/String;

    .line 113
    iget-boolean v5, p0, Lfa/b$c;->k:Z

    .line 114
    iget-boolean v6, p0, Lfa/b$c;->l:Z

    move-object v1, v0

    .line 115
    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;ZLjava/lang/String;ZZ)V

    :goto_0
    return-object v0

    :cond_2
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0
.end method

.method public static final parseTo(Lfa/k;)Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    instance-of v0, p0, Lfa/k$a;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$AlreadyUpToDate;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$AlreadyUpToDate;

    goto/16 :goto_0

    .line 131
    :cond_0
    instance-of v0, p0, Lfa/k$b;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$BatteryTooLow;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$BatteryTooLow;

    goto/16 :goto_0

    .line 132
    :cond_1
    instance-of v0, p0, Lfa/k$c;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatus;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatus;

    goto/16 :goto_0

    .line 133
    :cond_2
    instance-of v0, p0, Lfa/k$d;

    if-eqz v0, :cond_3

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpdateStatusError;

    goto/16 :goto_0

    .line 134
    :cond_3
    instance-of v0, p0, Lfa/k$e;

    if-eqz v0, :cond_4

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpgradeSlotsAlreadyStaged;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpgradeSlotsAlreadyStaged;

    goto/16 :goto_0

    .line 135
    :cond_4
    instance-of v0, p0, Lfa/k$f;

    if-eqz v0, :cond_5

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpgradeSlotsUploadRequired;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckUpgradeSlotsUploadRequired;

    goto/16 :goto_0

    .line 136
    :cond_5
    instance-of v0, p0, Lfa/k$g;

    if-eqz v0, :cond_6

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckingUpgradeSlots;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$CheckingUpgradeSlots;

    goto/16 :goto_0

    .line 137
    :cond_6
    instance-of v0, p0, Lfa/k$h;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$ConnectionLost;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$ConnectionLost;

    goto/16 :goto_0

    .line 138
    :cond_7
    instance-of v0, p0, Lfa/k$j;

    if-eqz v0, :cond_8

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$DownloadComplete;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$DownloadComplete;

    goto/16 :goto_0

    .line 139
    :cond_8
    instance-of v0, p0, Lfa/k$k;

    if-eqz v0, :cond_9

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$DownloadFailed;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$DownloadFailed;

    goto/16 :goto_0

    .line 140
    :cond_9
    instance-of v0, p0, Lfa/k$l;

    if-eqz v0, :cond_a

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$DownloadStart;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$DownloadStart;

    goto/16 :goto_0

    .line 141
    :cond_a
    instance-of v0, p0, Lfa/k$m;

    if-eqz v0, :cond_b

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$FlashError;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$FlashError;

    goto/16 :goto_0

    .line 142
    :cond_b
    instance-of v0, p0, Lfa/k$n;

    if-eqz v0, :cond_c

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$FlashSuccess;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$FlashSuccess;

    goto/16 :goto_0

    .line 143
    :cond_c
    instance-of v0, p0, Lfa/k$o;

    if-eqz v0, :cond_d

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$KickoffFirmwareProcess;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$KickoffFirmwareProcess;

    goto/16 :goto_0

    .line 144
    :cond_d
    instance-of v0, p0, Lfa/k$p;

    if-eqz v0, :cond_e

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$Md5CheckFailed;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$Md5CheckFailed;

    goto/16 :goto_0

    .line 145
    :cond_e
    instance-of v0, p0, Lfa/k$q;

    if-eqz v0, :cond_f

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$Md5CheckPassed;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$Md5CheckPassed;

    goto/16 :goto_0

    .line 146
    :cond_f
    instance-of v0, p0, Lfa/k$r;

    if-eqz v0, :cond_10

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$NoUpgradeInProcess;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$NoUpgradeInProcess;

    goto :goto_0

    .line 147
    :cond_10
    instance-of v0, p0, Lfa/k$s;

    if-eqz v0, :cond_11

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$PostUploadSlotCheck;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$PostUploadSlotCheck;

    goto :goto_0

    .line 148
    :cond_11
    instance-of v0, p0, Lfa/k$t;

    if-eqz v0, :cond_12

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$ReadyToFlash;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$ReadyToFlash;

    goto :goto_0

    .line 149
    :cond_12
    instance-of v0, p0, Lfa/k$u;

    if-eqz v0, :cond_13

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$Reconnected;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$Reconnected;

    goto :goto_0

    .line 150
    :cond_13
    instance-of v0, p0, Lfa/k$v;

    if-eqz v0, :cond_14

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UpToDate;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UpToDate;

    goto :goto_0

    .line 151
    :cond_14
    instance-of v0, p0, Lfa/k$w;

    if-eqz v0, :cond_15

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UpdateAvailable;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UpdateAvailable;

    goto :goto_0

    .line 152
    :cond_15
    instance-of v0, p0, Lfa/k$x;

    if-eqz v0, :cond_16

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UpgradeFailed;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UpgradeFailed;

    goto :goto_0

    .line 153
    :cond_16
    instance-of v0, p0, Lfa/k$y;

    if-eqz v0, :cond_17

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UpgradeSuccessful;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UpgradeSuccessful;

    goto :goto_0

    .line 154
    :cond_17
    instance-of v0, p0, Lfa/k$z;

    if-eqz v0, :cond_18

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadComplete;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadComplete;

    goto :goto_0

    .line 155
    :cond_18
    instance-of v0, p0, Lfa/k$a0$a;

    if-eqz v0, :cond_19

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$SlotCheck;

    goto :goto_0

    .line 156
    :cond_19
    instance-of v0, p0, Lfa/k$a0$b;

    if-eqz v0, :cond_1a

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$TransferStopped;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$TransferStopped;

    goto :goto_0

    .line 157
    :cond_1a
    instance-of v0, p0, Lfa/k$a0$c;

    if-eqz v0, :cond_1b

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$UserCanceled;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadInProgressError$UserCanceled;

    goto :goto_0

    .line 158
    :cond_1b
    instance-of p0, p0, Lfa/k$b0;

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadProgress;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptFirmwareUpdateState$UploadProgress;

    :goto_0
    return-object p0

    :cond_1c
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0
.end method

.method public static final parseTo(Lga/a;)Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lga/a$d;->k:Lga/a$d;

    invoke-static {p0, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;

    goto :goto_0

    .line 208
    :cond_0
    sget-object v0, Lga/a$c;->k:Lga/a$c;

    invoke-static {p0, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapTraining;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapTraining;

    goto :goto_0

    .line 209
    :cond_1
    sget-object v0, Lga/a$g;->k:Lga/a$g;

    invoke-static {p0, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;

    goto :goto_0

    .line 210
    :cond_2
    instance-of v0, p0, Lga/a$b;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;

    sget-object v1, Lcom/nike/adapt/adk/model/AdaptGestureAction;->Companion:Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;

    .line 211
    iget-object v2, p0, Lga/a;->h:Lga/a$e;

    .line 212
    invoke-virtual {v1, v2}, Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;->from(Lga/a$e;)Lcom/nike/adapt/adk/model/AdaptGestureAction;

    move-result-object v1

    sget-object v2, Lcom/nike/adapt/adk/model/AdaptGestureClassification;->Companion:Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;

    .line 213
    iget-object p0, p0, Lga/a;->i:Lga/a$f;

    .line 214
    invoke-virtual {v2, p0}, Lcom/nike/adapt/adk/model/AdaptGestureClassification$Companion;->from(Lga/a$f;)Lcom/nike/adapt/adk/model/AdaptGestureClassification;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$CustomGesture;-><init>(Lcom/nike/adapt/adk/model/AdaptGestureAction;Lcom/nike/adapt/adk/model/AdaptGestureClassification;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0
.end method

.method public static final parseTo(Lga/c;)Lcom/nike/adapt/adk/model/AdaptGestureNotification;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptGestureNotification;

    .line 201
    iget-wide v1, p0, Lga/c;->h:J

    .line 202
    iget-object p0, p0, Lga/c;->j:Lga/a;

    .line 203
    invoke-static {p0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lga/a;)Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/nike/adapt/adk/model/AdaptGestureNotification;-><init>(JLcom/nike/adapt/adk/model/AdaptGestureConfiguration;)V

    return-object v0
.end method

.method public static final parseTo(Lba/e;)Lcom/nike/adapt/adk/model/Battery;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/nike/adapt/adk/model/Battery;

    .line 68
    iget v1, p0, Lba/e;->h:I

    .line 69
    iget-object p0, p0, Lba/e;->i:Lba/e$b;

    .line 70
    sget-object v2, Lcom/nike/adapt/adk/AdaptMarshallerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-ne p0, v2, :cond_0

    .line 71
    sget-object p0, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    goto :goto_0

    :cond_0
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0

    .line 72
    :cond_1
    sget-object p0, Lcom/nike/adapt/adk/model/BatteryState;->CHARGING_ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    goto :goto_0

    .line 73
    :cond_2
    sget-object p0, Lcom/nike/adapt/adk/model/BatteryState;->ON_CHARGING:Lcom/nike/adapt/adk/model/BatteryState;

    goto :goto_0

    .line 74
    :cond_3
    sget-object p0, Lcom/nike/adapt/adk/model/BatteryState;->OFF_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

    goto :goto_0

    .line 75
    :cond_4
    sget-object p0, Lcom/nike/adapt/adk/model/BatteryState;->ON_CHARGER:Lcom/nike/adapt/adk/model/BatteryState;

    .line 76
    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;)V

    return-object v0
.end method

.method public static final parseTo(Ljava/util/List;)Lfd/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;",
            ">;)",
            "Lfd/e<",
            "Ljava/lang/Float;",
            "Ljava/util/List<",
            "Lba/c;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->getLedColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;

    .line 171
    new-instance v6, Lba/b;

    new-instance v7, Lba/g0;

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;->getRed$app_prodRelease()I

    move-result v8

    invoke-direct {v7, v8}, Lba/g0;-><init>(I)V

    new-instance v8, Lba/x;

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;->getGreen$app_prodRelease()I

    move-result v9

    invoke-direct {v8, v9}, Lba/x;-><init>(I)V

    new-instance v9, Lba/o;

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/AdaptAppAnimationColor;->getBlue$app_prodRelease()I

    move-result v5

    invoke-direct {v9, v5}, Lba/o;-><init>(I)V

    invoke-direct {v6, v7, v8, v9}, Lba/b;-><init>(Lba/g0;Lba/x;Lba/o;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_0
    new-instance v4, Lba/c;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->getDuration()F

    move-result v5

    const/16 v6, 0x3e8

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v4, v5, v3}, Lba/c;-><init>(ILjava/util/List;)V

    .line 173
    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->getDuration()F

    move-result v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    .line 174
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    new-instance p0, Lfd/e;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final parseTo(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lga/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lga/a;

    .line 206
    invoke-static {v1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lga/a;)Lcom/nike/adapt/adk/model/AdaptGestureConfiguration;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
