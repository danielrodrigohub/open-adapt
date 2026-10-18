.class public abstract Lya/d$d;
.super Lya/h0;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lnc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lya/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        "Complete:",
        "Ljava/lang/Object;",
        ">",
        "Lya/h0<",
        "TResponse;>;",
        "Lnc/d<",
        "TResponse;TValue;TComplete;>;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lya/d$d;->l:Lya/d;

    .line 2
    invoke-direct {p0}, Lya/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TComplete;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lya/d$d;->x()V

    .line 2
    iget-object p1, p0, Lya/h0;->h:Ljava/util/concurrent/CompletableFuture;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)V"
        }
    .end annotation

    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract x()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TComplete;)V"
        }
    .end annotation
.end method
