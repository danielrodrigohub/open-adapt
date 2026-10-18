.class public final Lpd/b;
.super Ljava/lang/Object;
.source "FileTreeWalk.kt"

# interfaces
.implements Lxd/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpd/b$c;,
        Lpd/b$a;,
        Lpd/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxd/d<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "direction"

    invoke-static {v0, v1}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpd/b;->a:Ljava/io/File;

    .line 3
    iput v0, p0, Lpd/b;->b:I

    const p1, 0x7fffffff

    .line 4
    iput p1, p0, Lpd/b;->c:I

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lpd/b$b;

    invoke-direct {v0, p0}, Lpd/b$b;-><init>(Lpd/b;)V

    return-object v0
.end method
