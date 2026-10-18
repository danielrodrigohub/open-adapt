.class public final Lf2/q;
.super Ljava/lang/Object;
.source "ShapeTrimPath.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Le2/b;

.field public final d:Le2/b;

.field public final e:Le2/b;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILe2/b;Le2/b;Le2/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/q;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lf2/q;->b:I

    .line 4
    iput-object p3, p0, Lf2/q;->c:Le2/b;

    .line 5
    iput-object p4, p0, Lf2/q;->d:Le2/b;

    .line 6
    iput-object p5, p0, Lf2/q;->e:Le2/b;

    .line 7
    iput-boolean p6, p0, Lf2/q;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 0

    new-instance p1, La2/t;

    invoke-direct {p1, p2, p0}, La2/t;-><init>(Lg2/b;Lf2/q;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Trim Path: {start: "

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf2/q;->c:Le2/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf2/q;->d:Le2/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf2/q;->e:Le2/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
