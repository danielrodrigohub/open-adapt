.class public final Lee/d$a;
.super Ljava/lang/Object;
.source "ResourceFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lde/a0;)Z
    .locals 5

    sget-object v0, Lee/d;->b:Lee/d$a;

    .line 1
    invoke-static {p0}, Lee/l;->a(Lde/a0;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    iget-object p0, p0, Lde/a0;->h:Lde/g;

    add-int/2addr v0, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 3
    invoke-static {p0, v0, v2, v1, v4}, Lde/g;->y(Lde/g;IIILjava/lang/Object;)Lde/g;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lde/a0;->m()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 6
    invoke-virtual {v0}, Lde/g;->j()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 7
    sget-object p0, Lde/g;->l:Lde/g;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lde/a0;->h:Lde/g;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lde/g;->A()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".class"

    .line 10
    invoke-static {p0, v0, v3}, Lyd/o;->Y(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method


# virtual methods
.method public final b(Lde/a0;Lde/a0;)Lde/a0;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lde/a0;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    sget-object v0, Lee/d;->c:Lde/a0;

    .line 3
    invoke-virtual {p1}, Lde/a0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lyd/s;->w0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5c

    const/16 v1, 0x2f

    invoke-static {p1, p2, v1}, Lyd/o;->e0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lde/a0;->j(Ljava/lang/String;)Lde/a0;

    move-result-object p1

    return-object p1
.end method
