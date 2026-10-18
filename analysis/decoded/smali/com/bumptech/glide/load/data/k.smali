.class public final Lcom/bumptech/glide/load/data/k;
.super Ljava/lang/Object;
.source "InputStreamRewinder.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly2/x;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ls2/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ly2/x;

    invoke-direct {v0, p1, p2}, Ly2/x;-><init>(Ljava/io/InputStream;Ls2/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/data/k;->a:Ly2/x;

    const/high16 p1, 0x500000

    .line 3
    invoke-virtual {v0, p1}, Ly2/x;->mark(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/k;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/data/k;->a:Ly2/x;

    invoke-virtual {v0}, Ly2/x;->Y()V

    return-void
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/data/k;->a:Ly2/x;

    invoke-virtual {v0}, Ly2/x;->reset()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/data/k;->a:Ly2/x;

    return-object v0
.end method
