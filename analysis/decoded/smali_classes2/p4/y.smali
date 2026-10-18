.class public final synthetic Lp4/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lp4/y;->h:I

    iput-object p1, p0, Lp4/y;->i:Ljava/lang/Object;

    iput-object p2, p0, Lp4/y;->j:Ljava/lang/Object;

    iput-object p3, p0, Lp4/y;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lp4/y;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lp4/y;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/b;

    iget-object v1, p0, Lp4/y;->j:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lp4/y;->k:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/rtsp/a;

    .line 1
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/b;->c:Lcom/google/android/exoplayer2/source/rtsp/b$a;

    check-cast v0, Ly0/c0;

    iget-object v0, v0, Ly0/c0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;

    .line 2
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;->c:Ljava/lang/String;

    .line 3
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/rtsp/a;->r()Lcom/google/android/exoplayer2/source/rtsp/g$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;->d:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 5
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/f;->k:Lcom/google/android/exoplayer2/source/rtsp/d;

    .line 6
    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/rtsp/a;->f()I

    move-result v2

    .line 7
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/d;->q:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 8
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/rtsp/g;->j:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;->d:Lcom/google/android/exoplayer2/source/rtsp/f;

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/source/rtsp/f;->C:Z

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;->d:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/f;->i()V

    return-void

    .line 13
    :pswitch_1
    iget-object v0, p0, Lp4/y;->i:Ljava/lang/Object;

    check-cast v0, Lp4/e0$a;

    iget-object v1, p0, Lp4/y;->j:Ljava/lang/Object;

    check-cast v1, Lp4/e0;

    iget-object v2, p0, Lp4/y;->k:Ljava/lang/Object;

    check-cast v2, Lp4/u;

    .line 14
    iget v3, v0, Lp4/e0$a;->a:I

    iget-object v0, v0, Lp4/e0$a;->b:Lp4/x$b;

    invoke-interface {v1, v3, v0, v2}, Lp4/e0;->H(ILp4/x$b;Lp4/u;)V

    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lp4/y;->i:Ljava/lang/Object;

    check-cast v0, Ln5/s$a;

    iget-object v1, p0, Lp4/y;->j:Ljava/lang/Object;

    check-cast v1, Ln3/s0;

    iget-object v2, p0, Lp4/y;->k:Ljava/lang/Object;

    check-cast v2, Lq3/i;

    .line 16
    iget-object v3, v0, Ln5/s$a;->b:Ln5/s;

    sget v4, Lm5/g0;->a:I

    invoke-interface {v3}, Ln5/s;->z()V

    .line 17
    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    invoke-interface {v0, v1, v2}, Ln5/s;->u(Ln3/s0;Lq3/i;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
