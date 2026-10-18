.class public final Lvb/a;
.super Ljava/lang/Object;
.source "OIDCAuthenticatorImpl.kt"

# interfaces
.implements Lob/h;


# instance fields
.field public final a:Lcc/a;


# direct methods
.method public constructor <init>(Lcc/a;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvb/a;->a:Lcc/a;

    return-void
.end method


# virtual methods
.method public final a(Ljd/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lob/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lvb/a;->a:Lcc/a;

    invoke-interface {v0, p1}, Lcc/a;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lob/b;
    .locals 1

    iget-object v0, p0, Lvb/a;->a:Lcc/a;

    invoke-interface {v0}, Lcc/a;->b()Lob/c;

    move-result-object v0

    return-object v0
.end method
