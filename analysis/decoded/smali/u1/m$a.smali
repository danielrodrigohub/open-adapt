.class public final Lu1/m$a;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu1/m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lv1/c;

.field public final synthetic i:Lu1/m;


# direct methods
.method public constructor <init>(Lu1/m;Lv1/c;)V
    .locals 0

    iput-object p1, p0, Lu1/m$a;->i:Lu1/m;

    iput-object p2, p0, Lu1/m$a;->h:Lv1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lu1/m$a;->h:Lv1/c;

    iget-object v1, p0, Lu1/m$a;->i:Lu1/m;

    iget-object v1, v1, Lu1/m;->k:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->a()Lx6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv1/c;->l(Lx6/a;)Z

    return-void
.end method
