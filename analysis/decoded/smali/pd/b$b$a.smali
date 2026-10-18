.class public final Lpd/b$b$a;
.super Lpd/b$a;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpd/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public c:[Ljava/io/File;

.field public d:I

.field public e:Z

.field public final synthetic f:Lpd/b$b;


# direct methods
.method public constructor <init>(Lpd/b$b;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "rootDir"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpd/b$b$a;->f:Lpd/b$b;

    invoke-direct {p0, p2}, Lpd/b$a;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lpd/b$b$a;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lpd/b$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lpd/b$b$a;->f:Lpd/b$b;

    iget-object v0, v0, Lpd/b$b;->k:Lpd/b;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lpd/b$c;->a:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lpd/b$b$a;->c:[Ljava/io/File;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lpd/b$b$a;->f:Lpd/b$b;

    iget-object v0, v0, Lpd/b$b;->k:Lpd/b;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-boolean v1, p0, Lpd/b$b$a;->e:Z

    .line 9
    :cond_0
    iget-object v0, p0, Lpd/b$b$a;->c:[Ljava/io/File;

    if-eqz v0, :cond_1

    iget v2, p0, Lpd/b$b$a;->d:I

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 10
    iget-object v0, p0, Lpd/b$b$a;->c:[Ljava/io/File;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    iget v1, p0, Lpd/b$b$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lpd/b$b$a;->d:I

    aget-object v0, v0, v1

    return-object v0

    .line 11
    :cond_1
    iget-boolean v0, p0, Lpd/b$b$a;->b:Z

    if-nez v0, :cond_2

    .line 12
    iput-boolean v1, p0, Lpd/b$b$a;->b:Z

    .line 13
    iget-object v0, p0, Lpd/b$c;->a:Ljava/io/File;

    return-object v0

    .line 14
    :cond_2
    iget-object v0, p0, Lpd/b$b$a;->f:Lpd/b$b;

    iget-object v0, v0, Lpd/b$b;->k:Lpd/b;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
