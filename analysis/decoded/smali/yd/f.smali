.class public final Lyd/f;
.super Ljava/lang/Object;
.source "Regex.kt"

# interfaces
.implements Lyd/e;


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public final b:Lyd/f$b;

.field public c:Lyd/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyd/f;->a:Ljava/util/regex/Matcher;

    .line 2
    new-instance p1, Lyd/f$b;

    invoke-direct {p1, p0}, Lyd/f$b;-><init>(Lyd/f;)V

    iput-object p1, p0, Lyd/f;->b:Lyd/f$b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyd/f;->c:Lyd/f$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lyd/f$a;

    invoke-direct {v0, p0}, Lyd/f$a;-><init>(Lyd/f;)V

    iput-object v0, p0, Lyd/f;->c:Lyd/f$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lyd/f;->c:Lyd/f$a;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()Lyd/d;
    .locals 1

    iget-object v0, p0, Lyd/f;->b:Lyd/f$b;

    return-object v0
.end method

.method public final c()Lvd/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lyd/f;->a:Ljava/util/regex/Matcher;

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-static {v1, v0}, Landroidx/activity/k;->w(II)Lvd/e;

    move-result-object v0

    return-object v0
.end method
