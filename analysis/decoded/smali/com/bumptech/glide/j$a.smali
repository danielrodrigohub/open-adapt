.class public final Lcom/bumptech/glide/j$a;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/bumptech/glide/j;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/j$a;->h:Lcom/bumptech/glide/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/j$a;->h:Lcom/bumptech/glide/j;

    iget-object v1, v0, Lcom/bumptech/glide/j;->j:Le3/h;

    invoke-interface {v1, v0}, Le3/h;->b(Le3/i;)V

    return-void
.end method
