.class public final Ln3/q;
.super Ln3/k1;
.source "ExoPlaybackException.java"


# instance fields
.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:Ln3/s0;

.field public final n:I

.field public final o:Lp4/w;

.field public final p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln3/p;->c:Ln3/p;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;ILjava/lang/String;ILn3/s0;IZ)V
    .locals 13

    move v4, p1

    move/from16 v8, p7

    if-eqz v4, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq v4, v1, :cond_1

    if-eq v4, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    goto :goto_0

    :cond_0
    const-string v0, "Remote error"

    :goto_0
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_2

    .line 21
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", format_supported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    sget v3, Lm5/g0;->a:I

    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    const/4 v1, 0x2

    if-eq v8, v1, :cond_4

    if-eq v8, v0, :cond_3

    const/4 v0, 0x4

    if-ne v8, v0, :cond_2

    const-string v0, "YES"

    goto :goto_1

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_1

    :cond_4
    const-string v0, "NO_UNSUPPORTED_DRM"

    goto :goto_1

    :cond_5
    const-string v0, "NO_UNSUPPORTED_TYPE"

    goto :goto_1

    :cond_6
    const-string v0, "NO"

    .line 24
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    const-string v0, "Source error"

    :goto_2
    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ": "

    .line 26
    invoke-static {v0, v2, v1}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v1, v0

    const/4 v9, 0x0

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p3

    move v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v12, p8

    .line 28
    invoke-direct/range {v0 .. v12}, Ln3/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILn3/s0;ILp4/w;JZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Ln3/k1;-><init>(Landroid/os/Bundle;)V

    const/16 v0, 0x3e9

    .line 2
    invoke-static {v0}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ln3/q;->j:I

    const/16 v0, 0x3ea

    .line 3
    invoke-static {v0}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln3/q;->k:Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 4
    invoke-static {v0}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ln3/q;->l:I

    const/16 v0, 0x3ec

    .line 5
    invoke-static {v0}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Ln3/s0;->O:Ln3/r0;

    invoke-virtual {v2, v0}, Ln3/r0;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v0

    check-cast v0, Ln3/s0;

    :goto_0
    iput-object v0, p0, Ln3/q;->m:Ln3/s0;

    const/16 v0, 0x3ed

    .line 7
    invoke-static {v0}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 8
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ln3/q;->n:I

    const/16 v0, 0x3ee

    .line 9
    invoke-static {v0}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ln3/q;->p:Z

    .line 10
    iput-object v1, p0, Ln3/q;->o:Lp4/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILn3/s0;ILp4/w;JZ)V
    .locals 9

    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 11
    invoke-direct/range {v0 .. v5}, Ln3/k1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 12
    :goto_1
    invoke-static {v2}, Lm5/a;->a(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    move v0, v1

    .line 13
    :cond_3
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 14
    iput v7, v6, Ln3/q;->j:I

    move-object v0, p5

    .line 15
    iput-object v0, v6, Ln3/q;->k:Ljava/lang/String;

    move v0, p6

    .line 16
    iput v0, v6, Ln3/q;->l:I

    move-object/from16 v0, p7

    .line 17
    iput-object v0, v6, Ln3/q;->m:Ln3/s0;

    move/from16 v0, p8

    .line 18
    iput v0, v6, Ln3/q;->n:I

    move-object/from16 v0, p9

    .line 19
    iput-object v0, v6, Ln3/q;->o:Lp4/w;

    .line 20
    iput-boolean v8, v6, Ln3/q;->p:Z

    return-void
.end method

.method public static d(Ljava/lang/RuntimeException;I)Ln3/q;
    .locals 10

    .line 1
    new-instance v9, Ln3/q;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p0

    move v3, p1

    .line 2
    invoke-direct/range {v0 .. v8}, Ln3/q;-><init>(ILjava/lang/Throwable;ILjava/lang/String;ILn3/s0;IZ)V

    return-object v9
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/k1;->a()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 2
    invoke-static {v1}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/q;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x3ea

    .line 3
    invoke-static {v1}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/q;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3eb

    .line 4
    invoke-static {v1}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/q;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Ln3/q;->m:Ln3/s0;

    if-eqz v1, :cond_0

    const/16 v1, 0x3ec

    .line 6
    invoke-static {v1}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/q;->m:Ln3/s0;

    invoke-virtual {v2}, Ln3/s0;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/16 v1, 0x3ed

    .line 7
    invoke-static {v1}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/q;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x3ee

    .line 8
    invoke-static {v1}, Ln3/k1;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/q;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final c(Lp4/w;)Ln3/q;
    .locals 14

    .line 1
    new-instance v13, Ln3/q;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget v0, Lm5/g0;->a:I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Ln3/k1;->h:I

    iget v4, p0, Ln3/q;->j:I

    iget-object v5, p0, Ln3/q;->k:Ljava/lang/String;

    iget v6, p0, Ln3/q;->l:I

    iget-object v7, p0, Ln3/q;->m:Ln3/s0;

    iget v8, p0, Ln3/q;->n:I

    iget-wide v10, p0, Ln3/k1;->i:J

    iget-boolean v12, p0, Ln3/q;->p:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Ln3/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILn3/s0;ILp4/w;JZ)V

    return-object v13
.end method
