.class public final Lm8/g$d;
.super Ljava/lang/Object;
.source "FetchProfileRepository.kt"

# interfaces
.implements Lf8/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm8/g;->b(Lf8/c;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf8/c<",
        "Lcom/nike/adapt/presenter/profile/AdaptUser;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf8/c;Lqd/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lm8/g$d;->a:Lf8/c;

    iput-object p2, p0, Lm8/g$d;->b:Lqd/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf8/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/b;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lf8/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm8/g$d;->a:Lf8/c;

    check-cast p1, Lf8/e;

    .line 2
    iget-object p1, p1, Lf8/e;->a:Ljava/lang/Object;

    .line 3
    new-instance v1, Lf8/e;

    invoke-direct {v1, p1}, Lf8/e;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lf8/c;->a(Lf8/b;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lf8/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm8/g$d;->b:Lqd/l;

    check-cast p1, Lf8/d;

    .line 5
    iget-object p1, p1, Lf8/d;->a:Ljava/lang/Throwable;

    .line 6
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
