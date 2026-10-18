.class public final Ln5/d;
.super Ljava/lang/Object;
.source "FixedFrameRateEstimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln5/d$a;
    }
.end annotation


# instance fields
.field public a:Ln5/d$a;

.field public b:Ln5/d$a;

.field public c:Z

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln5/d$a;

    invoke-direct {v0}, Ln5/d$a;-><init>()V

    iput-object v0, p0, Ln5/d;->a:Ln5/d$a;

    .line 3
    new-instance v0, Ln5/d$a;

    invoke-direct {v0}, Ln5/d$a;-><init>()V

    iput-object v0, p0, Ln5/d;->b:Ln5/d$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Ln5/d;->d:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Ln5/d;->a:Ln5/d$a;

    invoke-virtual {v0}, Ln5/d$a;->a()Z

    move-result v0

    return v0
.end method
