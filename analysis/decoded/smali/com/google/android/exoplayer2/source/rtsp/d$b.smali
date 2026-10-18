.class public final Lcom/google/android/exoplayer2/source/rtsp/d$b;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/rtsp/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lq/e;)V
    .locals 12

    .line 1
    sget-object v0, Lw4/l;->c:Lw4/l;

    .line 2
    iget-object v1, p1, Lq/e;->b:Ljava/lang/Object;

    check-cast v1, Lw4/n;

    iget-object v1, v1, Lw4/n;->a:Lu6/x;

    const-string v2, "range"

    .line 3
    invoke-virtual {v1, v2}, Lu6/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-static {v1}, Lw4/l;->a(Ljava/lang/String;)Lw4/l;

    move-result-object v0
    :try_end_0
    .catch Ln3/i1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 6
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->h:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    const-string v1, "SDP format error."

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/f$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    :goto_0
    iget-object p1, p1, Lq/e;->b:Ljava/lang/Object;

    check-cast p1, Lw4/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 9
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->p:Landroid/net/Uri;

    const/4 v2, 0x4

    const-string v3, "initialCapacity"

    .line 10
    invoke-static {v2, v3}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 11
    :goto_1
    iget-object v7, p1, Lw4/n;->b:Lu6/p0;

    .line 12
    iget v8, v7, Lu6/p0;->k:I

    const/4 v9, 0x1

    if-ge v5, v8, :cond_13

    .line 13
    invoke-virtual {v7, v5}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw4/a;

    .line 14
    iget-object v8, v7, Lw4/a;->j:Lw4/a$c;

    iget-object v8, v8, Lw4/a$c;->b:Ljava/lang/String;

    invoke-static {v8}, Landroidx/activity/k;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v11, "H263-2000"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v10, 0xf

    goto/16 :goto_2

    :sswitch_1
    const-string v11, "H263-1998"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v10, 0xe

    goto/16 :goto_2

    :sswitch_2
    const-string v11, "MP4V-ES"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v10, 0xd

    goto/16 :goto_2

    :sswitch_3
    const-string v11, "AMR-WB"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v10, 0xc

    goto/16 :goto_2

    :sswitch_4
    const-string v11, "PCMU"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0xb

    goto/16 :goto_2

    :sswitch_5
    const-string v11, "PCMA"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v10, 0xa

    goto/16 :goto_2

    :sswitch_6
    const-string v11, "OPUS"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v10, 0x9

    goto/16 :goto_2

    :sswitch_7
    const-string v11, "H265"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v10, 0x8

    goto/16 :goto_2

    :sswitch_8
    const-string v11, "H264"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    const/4 v10, 0x7

    goto :goto_2

    :sswitch_9
    const-string v11, "VP9"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_2

    :cond_a
    const/4 v10, 0x6

    goto :goto_2

    :sswitch_a
    const-string v11, "VP8"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    const/4 v10, 0x5

    goto :goto_2

    :sswitch_b
    const-string v11, "L16"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_2

    :cond_c
    move v10, v2

    goto :goto_2

    :sswitch_c
    const-string v11, "AMR"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_2

    :cond_d
    const/4 v10, 0x3

    goto :goto_2

    :sswitch_d
    const-string v11, "AC3"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_2

    :cond_e
    const/4 v10, 0x2

    goto :goto_2

    :sswitch_e
    const-string v11, "L8"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_2

    :cond_f
    move v10, v9

    goto :goto_2

    :sswitch_f
    const-string v11, "MPEG4-GENERIC"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_2

    :cond_10
    move v10, v4

    :goto_2
    packed-switch v10, :pswitch_data_0

    move v9, v4

    :pswitch_0
    if-eqz v9, :cond_12

    .line 15
    new-instance v8, Lw4/g;

    invoke-direct {v8, v7, v1}, Lw4/g;-><init>(Lw4/a;Landroid/net/Uri;)V

    add-int/lit8 v7, v6, 0x1

    .line 16
    array-length v9, v3

    if-ge v9, v7, :cond_11

    .line 17
    array-length v9, v3

    .line 18
    invoke-static {v9, v7}, Lu6/t$b;->a(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 19
    :cond_11
    aput-object v8, v3, v6

    move v6, v7

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 20
    :cond_13
    invoke-static {v3, v6}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 23
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->h:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    const/4 v0, 0x0

    .line 24
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    const-string v1, "No playable track."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/source/rtsp/f$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 25
    :cond_14
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 26
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d;->h:Lcom/google/android/exoplayer2/source/rtsp/d$e;

    .line 27
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    .line 28
    :goto_3
    move-object v3, p1

    check-cast v3, Lu6/p0;

    .line 29
    iget v5, v3, Lu6/p0;->k:I

    if-ge v2, v5, :cond_15

    .line 30
    invoke-virtual {v3, v2}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw4/g;

    .line 31
    new-instance v5, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 32
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/rtsp/f;->o:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    .line 33
    invoke-direct {v5, v6, v3, v2, v7}, Lcom/google/android/exoplayer2/source/rtsp/f$d;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lw4/g;ILcom/google/android/exoplayer2/source/rtsp/a$a;)V

    .line 34
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 35
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v3, v5, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Ll5/d0;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a:Lcom/google/android/exoplayer2/source/rtsp/f$c;

    .line 38
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/rtsp/f$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    .line 39
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/rtsp/f;->j:Lcom/google/android/exoplayer2/source/rtsp/f$a;

    .line 40
    invoke-virtual {v3, v5, v6, v4}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 41
    :cond_15
    iget-object p1, v1, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 42
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->n:Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 43
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;

    .line 44
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    .line 45
    iget-wide v2, v0, Lw4/l;->b:J

    iget-wide v5, v0, Lw4/l;->a:J

    sub-long/2addr v2, v5

    .line 46
    invoke-static {v2, v3}, Lm5/g0;->L(J)J

    move-result-wide v2

    .line 47
    iput-wide v2, v1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->u:J

    .line 48
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    .line 49
    iget-wide v0, v0, Lw4/l;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    move v1, v9

    goto :goto_4

    :cond_16
    move v1, v4

    :goto_4
    xor-int/2addr v1, v9

    .line 50
    iput-boolean v1, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->v:Z

    if-nez v0, :cond_17

    move v0, v9

    goto :goto_5

    :cond_17
    move v0, v4

    .line 51
    :goto_5
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->w:Z

    .line 52
    iput-boolean v4, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->x:Z

    .line 53
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->y()V

    .line 54
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 55
    iput-boolean v9, p1, Lcom/google/android/exoplayer2/source/rtsp/d;->w:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7290cac7 -> :sswitch_f
        0x96c -> :sswitch_e
        0xfc51 -> :sswitch_d
        0xfda6 -> :sswitch_c
        0x12371 -> :sswitch_b
        0x14cbe -> :sswitch_a
        0x14cbf -> :sswitch_9
        0x217d28 -> :sswitch_8
        0x217d29 -> :sswitch_7
        0x25203f -> :sswitch_6
        0x2562c7 -> :sswitch_5
        0x2562db -> :sswitch_4
        0x734e0c52 -> :sswitch_3
        0x74c813f6 -> :sswitch_2
        0x7f62e82d -> :sswitch_1
        0x7f6339a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lw4/j;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 2
    iget v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    const/4 v3, 0x2

    .line 5
    iput v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->v:I

    .line 6
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Lcom/google/android/exoplayer2/source/rtsp/d$a;

    if-nez v3, :cond_2

    .line 7
    new-instance v3, Lcom/google/android/exoplayer2/source/rtsp/d$a;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/source/rtsp/d$a;-><init>(Lcom/google/android/exoplayer2/source/rtsp/d;)V

    .line 8
    iput-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Lcom/google/android/exoplayer2/source/rtsp/d$a;

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 10
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->t:Lcom/google/android/exoplayer2/source/rtsp/d$a;

    .line 11
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d$a;->i:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/rtsp/d$a;->i:Z

    .line 13
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d$a;->h:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/d$b;->b:Lcom/google/android/exoplayer2/source/rtsp/d;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->z:J

    .line 16
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/d;->i:Lcom/google/android/exoplayer2/source/rtsp/d$d;

    .line 17
    iget-object v5, p1, Lw4/j;->a:Lw4/l;

    iget-wide v5, v5, Lw4/l;->a:J

    .line 18
    invoke-static {v5, v6}, Lm5/g0;->L(J)J

    move-result-wide v5

    iget-object p1, p1, Lw4/j;->b:Lu6/v;

    .line 19
    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v2

    .line 21
    :goto_2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 22
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw4/m;

    iget-object v9, v9, Lw4/m;->c:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v2

    .line 25
    :goto_3
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 26
    iget-object v9, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->m:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 28
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 29
    iget-object v9, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->m:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/source/rtsp/f$c;

    .line 31
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/rtsp/f$c;->a()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 32
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 33
    iget-object v9, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->n:Lcom/google/android/exoplayer2/source/rtsp/f$b;

    .line 34
    check-cast v9, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;

    .line 35
    iget-object v9, v9, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$a;->a:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    .line 36
    iput-boolean v2, v9, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->v:Z

    .line 37
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->y()V

    .line 38
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 39
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/rtsp/f;->h()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 40
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 41
    iput-boolean v1, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->x:Z

    .line 42
    iput-wide v3, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->u:J

    .line 43
    iput-wide v3, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->t:J

    .line 44
    iput-wide v3, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->v:J

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    .line 45
    :goto_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    if-ge v1, v7, :cond_c

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw4/m;

    .line 47
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    iget-object v9, v7, Lw4/m;->c:Landroid/net/Uri;

    move v10, v2

    .line 48
    :goto_5
    iget-object v11, v8, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 49
    iget-object v11, v8, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 50
    iget-boolean v11, v11, Lcom/google/android/exoplayer2/source/rtsp/f$d;->d:Z

    if-nez v11, :cond_6

    .line 51
    iget-object v11, v8, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    iget-object v11, v11, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a:Lcom/google/android/exoplayer2/source/rtsp/f$c;

    .line 52
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/rtsp/f$c;->a()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 53
    iget-object v8, v11, Lcom/google/android/exoplayer2/source/rtsp/f$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    goto :goto_6

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_8

    goto :goto_7

    .line 54
    :cond_8
    iget-wide v9, v7, Lw4/m;->a:J

    cmp-long v11, v9, v3

    if-eqz v11, :cond_9

    .line 55
    iget-object v11, v8, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lw4/b;

    .line 56
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-boolean v11, v11, Lw4/b;->h:Z

    if-nez v11, :cond_9

    .line 58
    iget-object v11, v8, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lw4/b;

    .line 59
    iput-wide v9, v11, Lw4/b;->i:J

    .line 60
    :cond_9
    iget v9, v7, Lw4/m;->b:I

    .line 61
    iget-object v10, v8, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lw4/b;

    .line 62
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-boolean v10, v10, Lw4/b;->h:Z

    if-nez v10, :cond_a

    .line 64
    iget-object v10, v8, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lw4/b;

    .line 65
    iput v9, v10, Lw4/b;->j:I

    .line 66
    :cond_a
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 67
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/rtsp/f;->h()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 68
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 69
    iget-wide v10, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->u:J

    .line 70
    iget-wide v12, v9, Lcom/google/android/exoplayer2/source/rtsp/f;->t:J

    cmp-long v9, v10, v12

    if-nez v9, :cond_b

    .line 71
    iget-wide v9, v7, Lw4/m;->a:J

    .line 72
    iput-wide v5, v8, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    .line 73
    iput-wide v9, v8, Lcom/google/android/exoplayer2/source/rtsp/b;->j:J

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 74
    :cond_c
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/f;->h()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 76
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 77
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->u:J

    .line 78
    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->t:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_d

    .line 79
    iput-wide v3, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->u:J

    .line 80
    iput-wide v3, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->t:J

    goto :goto_8

    .line 81
    :cond_d
    iput-wide v3, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->u:J

    .line 82
    invoke-virtual {p1, v5, v6}, Lcom/google/android/exoplayer2/source/rtsp/f;->t(J)J

    goto :goto_8

    .line 83
    :cond_e
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 84
    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    .line 85
    invoke-virtual {p1, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/f;->t(J)J

    .line 86
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$a;->h:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 87
    iput-wide v3, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->v:J

    :cond_f
    :goto_8
    return-void
.end method
