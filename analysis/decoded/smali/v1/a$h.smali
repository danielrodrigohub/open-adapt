.class public final Lv1/a$h;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# static fields
.field public static final c:Lv1/a$h;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lv1/a$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv1/a$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv1/a$h;-><init>(Z)V

    sput-object v0, Lv1/a$h;->c:Lv1/a$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lv1/a;->m:Lv1/a$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lv1/a$a;->e(Lv1/a$h;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
