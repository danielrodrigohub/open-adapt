.class public final Lda/e;
.super Ljava/lang/Object;
.source "AdaptKitConnectionStateKtx.kt"

# interfaces
.implements Lhc/g0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(II)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2
    invoke-static {}, Lda/e;->f()V

    const/16 p1, 0x2800

    const/16 v0, 0x2601

    .line 3
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 4
    invoke-static {}, Lda/e;->f()V

    const/16 p1, 0x2801

    .line 5
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 6
    invoke-static {}, Lda/e;->f()V

    const/16 p1, 0x2802

    const v0, 0x812f

    .line 7
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 8
    invoke-static {}, Lda/e;->f()V

    const/16 p1, 0x2803

    .line 9
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 10
    invoke-static {}, Lda/e;->f()V

    return-void
.end method

.method public static f()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    const-string v2, "glError: "

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {v1}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GlUtil"

    invoke-static {v2, v0}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lda/e;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static g([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public static final h(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    sget-object p0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "{\n            BigfootApp\u2026N.packageName))\n        }"

    .line 4
    invoke-static {p0, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, ""

    :goto_0
    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GlUtil"

    invoke-static {v0, p0}, Lm5/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final j(Lda/d;)Lv9/e;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0

    .line 3
    :pswitch_0
    sget-object v0, Lv9/e;->m:Lv9/e;

    goto :goto_0

    .line 4
    :pswitch_1
    sget-object v0, Lv9/e;->j:Lv9/e;

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object v0, Lv9/e;->r:Lv9/e;

    goto :goto_0

    .line 6
    :pswitch_3
    sget-object v0, Lv9/e;->q:Lv9/e;

    goto :goto_0

    .line 7
    :pswitch_4
    sget-object v0, Lv9/e;->p:Lv9/e;

    goto :goto_0

    .line 8
    :pswitch_5
    sget-object v0, Lv9/e;->o:Lv9/e;

    goto :goto_0

    .line 9
    :pswitch_6
    sget-object v0, Lv9/e;->n:Lv9/e;

    goto :goto_0

    .line 10
    :pswitch_7
    sget-object v0, Lv9/e;->l:Lv9/e;

    goto :goto_0

    .line 11
    :pswitch_8
    sget-object v0, Lv9/e;->k:Lv9/e;

    goto :goto_0

    .line 12
    :pswitch_9
    sget-object v0, Lv9/e;->i:Lv9/e;

    .line 13
    :goto_0
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, " -> "

    .line 15
    invoke-static {p0, v3, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ConnectionState"

    .line 16
    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p3, :cond_2

    .line 1
    sget-object p3, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object p3, Lv9/t;->i:Leb/f;

    const/4 v1, 0x1

    new-array v1, v1, [Leb/g;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception: "

    .line 4
    invoke-static {v4, v3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v0

    .line 5
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CoreRF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Leb/a;

    invoke-direct {v4, v3}, Leb/a;-><init>(Ljava/lang/String;)V

    new-instance v3, Leb/b;

    invoke-direct {v3, v4}, Leb/b;-><init>(Leb/d;)V

    aput-object v3, v1, v2

    invoke-virtual {p3, v1}, Leb/f;->a([Leb/g;)V

    .line 6
    :cond_2
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object p3

    if-eqz p4, :cond_4

    const-string v1, ":"

    .line 7
    invoke-static {v1, p4}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p4

    :cond_4
    :goto_0
    const-string p4, "CoreRF"

    invoke-static {p4, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p2, :cond_6

    .line 8
    new-instance v0, Lv9/t$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    move-object p2, p1

    :cond_5
    invoke-direct {v0, p2}, Lv9/t$a;-><init>(Ljava/lang/String;)V

    .line 9
    :cond_6
    invoke-virtual {p3, p4, p1}, Lfb/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, ":"

    .line 2
    invoke-static {v1, p3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    :cond_0
    const-string p3, ""

    :cond_1
    const-string v1, "CoreRF"

    invoke-static {v1, p3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_3

    .line 3
    new-instance v1, Lv9/t$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p2, p1

    :cond_2
    invoke-direct {v1, p2}, Lv9/t$a;-><init>(Ljava/lang/String;)V

    .line 4
    :cond_3
    invoke-virtual {v0, p3, p1}, Lfb/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p3, :cond_2

    .line 1
    sget-object p3, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object p3, Lv9/t;->i:Leb/f;

    const/4 v1, 0x1

    new-array v1, v1, [Leb/g;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception: "

    .line 4
    invoke-static {v4, v3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v0

    .line 5
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CoreRF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Leb/a;

    invoke-direct {v4, v3}, Leb/a;-><init>(Ljava/lang/String;)V

    new-instance v3, Leb/c;

    invoke-direct {v3, v4}, Leb/c;-><init>(Leb/d;)V

    aput-object v3, v1, v2

    invoke-virtual {p3, v1}, Leb/f;->a([Leb/g;)V

    .line 6
    :cond_2
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object p3

    if-eqz p4, :cond_4

    const-string v1, ":"

    .line 7
    invoke-static {v1, p4}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p4

    :cond_4
    :goto_0
    const-string p4, "CoreRF"

    invoke-static {p4, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p2, :cond_6

    .line 8
    new-instance v0, Lv9/t$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    move-object p2, p1

    :cond_5
    invoke-direct {v0, p2}, Lv9/t$a;-><init>(Ljava/lang/String;)V

    .line 9
    :cond_6
    invoke-virtual {p3, p4, p1}, Lfb/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    const-string v2, "CoreRF"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    return-void
.end method
