.class public final Lm8/h;
.super Lrd/o;
.source "FetchProfileRepository.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Throwable;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lf8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf8/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lm8/h;->h:Lf8/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lm8/h;->h:Lf8/c;

    .line 4
    new-instance v1, Lf8/d;

    invoke-direct {v1, p1}, Lf8/d;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lf8/c;->a(Lf8/b;)V

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
