.class public final Lu1/o;
.super Ljava/lang/Object;
.source "WorkForegroundUpdater.java"

# interfaces
.implements Lk1/g;


# instance fields
.field public final a:Lw1/a;

.field public final b:Ls1/a;

.field public final c:Lt1/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Ls1/a;Lw1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lu1/o;->b:Ls1/a;

    .line 3
    iput-object p3, p0, Lu1/o;->a:Lw1/a;

    .line 4
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->w()Lt1/p;

    move-result-object p1

    iput-object p1, p0, Lu1/o;->c:Lt1/p;

    return-void
.end method
