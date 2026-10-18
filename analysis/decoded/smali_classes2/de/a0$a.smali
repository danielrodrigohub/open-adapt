.class public final Lde/a0$a;
.super Ljava/lang/Object;
.source "Path.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/a0;
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

.method public static b(Ljava/io/File;)Lde/a0;
    .locals 3

    sget-object v0, Lde/a0;->i:Lde/a0$a;

    const/4 v1, 0x0

    const-string v2, "<this>"

    .line 1
    invoke-static {p0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "toString()"

    invoke-static {p0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lde/a0$a;->a(Ljava/lang/String;Z)Lde/a0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lde/a0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lee/l;->a:Lde/g;

    .line 2
    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    invoke-virtual {v0, p1}, Lde/c;->F0(Ljava/lang/String;)Lde/c;

    invoke-static {v0, p2}, Lee/l;->e(Lde/c;Z)Lde/a0;

    move-result-object p1

    return-object p1
.end method
