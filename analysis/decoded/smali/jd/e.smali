.class public interface abstract Ljd/e;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Ljd/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljd/e$a;
    }
.end annotation


# static fields
.field public static final synthetic d:I


# virtual methods
.method public abstract interceptContinuation(Ljd/d;)Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljd/d<",
            "-TT;>;)",
            "Ljd/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract releaseInterceptedContinuation(Ljd/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "*>;)V"
        }
    .end annotation
.end method
