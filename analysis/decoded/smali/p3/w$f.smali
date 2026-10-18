.class public final Lp3/w$f;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Ln3/s0;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:[Lp3/f;


# direct methods
.method public constructor <init>(Ln3/s0;IIIIIII[Lp3/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/w$f;->a:Ln3/s0;

    .line 3
    iput p2, p0, Lp3/w$f;->b:I

    .line 4
    iput p3, p0, Lp3/w$f;->c:I

    .line 5
    iput p4, p0, Lp3/w$f;->d:I

    .line 6
    iput p5, p0, Lp3/w$f;->e:I

    .line 7
    iput p6, p0, Lp3/w$f;->f:I

    .line 8
    iput p7, p0, Lp3/w$f;->g:I

    .line 9
    iput p8, p0, Lp3/w$f;->h:I

    .line 10
    iput-object p9, p0, Lp3/w$f;->i:[Lp3/f;

    return-void
.end method

.method public static d(Lp3/d;Z)Landroid/media/AudioAttributes;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/16 p1, 0x10

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lp3/d;->b()Lp3/d$c;

    move-result-object p0

    iget-object p0, p0, Lp3/d$c;->a:Landroid/media/AudioAttributes;

    return-object p0
.end method


# virtual methods
.method public final a(ZLp3/d;I)Landroid/media/AudioTrack;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$b;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lp3/w$f;->b(ZLp3/d;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p2, 0x1

    if-ne v1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    :catch_0
    new-instance p1, Lp3/q$b;

    iget v2, p0, Lp3/w$f;->e:I

    iget v3, p0, Lp3/w$f;->f:I

    iget v4, p0, Lp3/w$f;->h:I

    iget-object v5, p0, Lp3/w$f;->a:Ln3/s0;

    .line 5
    invoke-virtual {p0}, Lp3/w$f;->e()Z

    move-result v6

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lp3/q$b;-><init>(IIIILn3/s0;ZLjava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    move-object v7, p1

    .line 6
    new-instance p1, Lp3/q$b;

    const/4 v1, 0x0

    iget v2, p0, Lp3/w$f;->e:I

    iget v3, p0, Lp3/w$f;->f:I

    iget v4, p0, Lp3/w$f;->h:I

    iget-object v5, p0, Lp3/w$f;->a:Ln3/s0;

    .line 7
    invoke-virtual {p0}, Lp3/w$f;->e()Z

    move-result v6

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lp3/q$b;-><init>(IIIILn3/s0;ZLjava/lang/Exception;)V

    throw p1
.end method

.method public final b(ZLp3/d;I)Landroid/media/AudioTrack;
    .locals 8

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 2
    iget v0, p0, Lp3/w$f;->e:I

    iget v1, p0, Lp3/w$f;->f:I

    iget v2, p0, Lp3/w$f;->g:I

    .line 3
    invoke-static {v0, v1, v2}, Lp3/w;->A(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 4
    invoke-static {p2, p1}, Lp3/w$f;->d(Lp3/d;Z)Landroid/media/AudioAttributes;

    move-result-object p1

    .line 5
    new-instance p2, Landroid/media/AudioTrack$Builder;

    invoke-direct {p2}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v0, p0, Lp3/w$f;->h:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget p3, p0, Lp3/w$f;->c:I

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 13
    new-instance v0, Landroid/media/AudioTrack;

    .line 14
    invoke-static {p2, p1}, Lp3/w$f;->d(Lp3/d;Z)Landroid/media/AudioAttributes;

    move-result-object v3

    iget p1, p0, Lp3/w$f;->e:I

    iget p2, p0, Lp3/w$f;->f:I

    iget v1, p0, Lp3/w$f;->g:I

    .line 15
    invoke-static {p1, p2, v1}, Lp3/w;->A(III)Landroid/media/AudioFormat;

    move-result-object v4

    .line 16
    iget v5, p0, Lp3/w$f;->h:I

    const/4 v6, 0x1

    move-object v2, v0

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0

    .line 17
    :cond_2
    iget p1, p2, Lp3/d;->j:I

    invoke-static {p1}, Lm5/g0;->B(I)I

    move-result v1

    if-nez p3, :cond_3

    .line 18
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Lp3/w$f;->e:I

    iget v3, p0, Lp3/w$f;->f:I

    iget v4, p0, Lp3/w$f;->g:I

    iget v5, p0, Lp3/w$f;->h:I

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Lp3/w$f;->e:I

    iget v3, p0, Lp3/w$f;->f:I

    iget v4, p0, Lp3/w$f;->g:I

    iget v5, p0, Lp3/w$f;->h:I

    const/4 v6, 0x1

    move-object v0, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    :goto_1
    return-object p1
.end method

.method public final c(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget v0, p0, Lp3/w$f;->e:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lp3/w$f;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
