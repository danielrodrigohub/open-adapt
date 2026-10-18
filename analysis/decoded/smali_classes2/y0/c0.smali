.class public final synthetic Ly0/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;
.implements Ls3/a$d;
.implements Lcom/google/android/exoplayer2/source/rtsp/b$a;
.implements Ln5/l$b$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ly0/c0;->b:I

    iput-object p1, p0, Ly0/c0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 1

    iget-object v0, p0, Ly0/c0;->c:Ljava/lang/Object;

    check-cast v0, Ls3/p;

    invoke-virtual {v0, p1, p2}, Ls3/p;->f(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b(Landroid/view/Display;)V
    .locals 5

    iget-object v0, p0, Ly0/c0;->c:Ljava/lang/Object;

    check-cast v0, Ln5/l;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v1, p1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v1

    double-to-long v1, v3

    .line 2
    iput-wide v1, v0, Ln5/l;->k:J

    const-wide/16 v3, 0x50

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    .line 3
    div-long/2addr v1, v3

    iput-wide v1, v0, Ln5/l;->l:J

    goto :goto_0

    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    const-string v1, "Unable to query display refresh rate"

    .line 4
    invoke-static {p1, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v1, v0, Ln5/l;->k:J

    .line 6
    iput-wide v1, v0, Ln5/l;->l:J

    :goto_0
    return-void
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ly0/c0;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ly0/c0;->c:Ljava/lang/Object;

    check-cast v0, Ln3/l1;

    check-cast p1, Ln3/o1$c;

    sget v1, Ln3/k0;->m0:I

    .line 1
    iget-object v0, v0, Ln3/l1;->f:Ln3/q;

    invoke-interface {p1, v0}, Ln3/o1$c;->i(Ln3/k1;)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Ly0/c0;->c:Ljava/lang/Object;

    check-cast v0, Lf4/a;

    check-cast p1, Ln3/o1$c;

    .line 3
    invoke-interface {p1, v0}, Ln3/o1$c;->C(Lf4/a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
