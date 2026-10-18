.class public final Lpd/b$b;
.super Lgd/b;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpd/b$b$a;,
        Lpd/b$b$c;,
        Lpd/b$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgd/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lpd/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Lpd/b;


# direct methods
.method public constructor <init>(Lpd/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lpd/b$b;->k:Lpd/b;

    invoke-direct {p0}, Lgd/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lpd/b$b;->j:Ljava/util/ArrayDeque;

    .line 3
    iget-object v1, p1, Lpd/b;->a:Ljava/io/File;

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p1, Lpd/b;->a:Ljava/io/File;

    .line 6
    invoke-virtual {p0, p1}, Lpd/b$b;->a(Ljava/io/File;)Lpd/b$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Lpd/b;->a:Ljava/io/File;

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lpd/b$b$b;

    .line 9
    iget-object p1, p1, Lpd/b;->a:Ljava/io/File;

    .line 10
    invoke-direct {v1, p1}, Lpd/b$b$b;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lgd/b;->h:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lpd/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lpd/b$b;->k:Lpd/b;

    .line 2
    iget v0, v0, Lpd/b;->b:I

    .line 3
    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lpd/b$b$a;

    invoke-direct {v0, p0, p1}, Lpd/b$b$a;-><init>(Lpd/b$b;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Lpd/b$b$c;

    invoke-direct {v0, p0, p1}, Lpd/b$b$c;-><init>(Lpd/b$b;Ljava/io/File;)V

    :goto_0
    return-object v0
.end method
