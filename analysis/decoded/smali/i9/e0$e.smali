.class public final Li9/e0$e;
.super Lrd/o;
.source "WelcomeOnBoardingFragment.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li9/e0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lk8/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Li9/e0;


# direct methods
.method public constructor <init>(Li9/e0;)V
    .locals 0

    iput-object p1, p0, Li9/e0$e;->h:Li9/e0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Lk8/h;->e:I

    iget-object v0, p0, Li9/e0$e;->h:Li9/e0;

    sget v1, Li9/e0;->p0:I

    .line 2
    iget-object v0, v0, Lp8/r;->d0:Li8/d;

    const-string v1, "eventUUID"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lk8/a;

    invoke-direct {v1, v0}, Lk8/a;-><init>(Li8/d;)V

    return-object v1
.end method
