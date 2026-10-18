.class public final Lg0/o;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/o$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fonts-androidx"

    .line 2
    iput-object v0, p0, Lg0/o;->a:Ljava/lang/String;

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lg0/o;->b:I

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Lg0/o$a;

    iget-object v1, p0, Lg0/o;->a:Ljava/lang/String;

    iget v2, p0, Lg0/o;->b:I

    invoke-direct {v0, p1, v1, v2}, Lg0/o$a;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
