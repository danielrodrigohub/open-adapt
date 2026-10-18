.class public final Lg0/i;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lg0/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lg0/f;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lg0/f;I)V
    .locals 0

    iput-object p1, p0, Lg0/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lg0/i;->b:Landroid/content/Context;

    iput-object p3, p0, Lg0/i;->c:Lg0/f;

    iput p4, p0, Lg0/i;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lg0/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lg0/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lg0/i;->c:Lg0/f;

    iget v3, p0, Lg0/i;->d:I

    invoke-static {v0, v1, v2, v3}, Lg0/k;->b(Ljava/lang/String;Landroid/content/Context;Lg0/f;I)Lg0/k$a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2
    :catchall_0
    new-instance v0, Lg0/k$a;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lg0/k$a;-><init>(I)V

    :goto_0
    return-object v0
.end method
