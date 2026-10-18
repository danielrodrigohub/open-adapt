.class public final Lid/a;
.super Ljava/lang/Thread;
.source "Thread.kt"


# instance fields
.field public final synthetic h:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lid/a;->h:Lqd/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lid/a;->h:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void
.end method
