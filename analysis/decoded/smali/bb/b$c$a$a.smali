.class public final Lbb/b$c$a$a;
.super Ljava/lang/Object;
.source "AdaptKitFirmwareRepository.kt"

# interfaces
.implements Lta/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lta/a<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lbb/b;

.field public final synthetic b:Lfa/b$c;

.field public final synthetic c:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Lfa/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbb/b;Lfa/b$c;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbb/b;",
            "Lfa/b$c;",
            "Ljd/d<",
            "-",
            "Lfa/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbb/b$c$a$a;->a:Lbb/b;

    iput-object p2, p0, Lbb/b$c$a$a;->b:Lfa/b$c;

    iput-object p3, p0, Lbb/b$c$a$a;->c:Ljd/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, [B

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbb/b$c$a$a;->a:Lbb/b;

    .line 4
    iget-object v0, v0, Lbb/b;->b:Lfb/l;

    .line 5
    iget-object v1, p0, Lbb/b$c$a$a;->b:Lfa/b$c;

    .line 6
    iget-object v1, v1, Lfa/b$c;->m:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1}, Lfb/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lbb/b$c$a$a;->a:Lbb/b;

    .line 9
    iget-object v1, v1, Lbb/b;->b:Lfb/l;

    .line 10
    invoke-interface {v1, p1}, Lfb/l;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v0, p0, Lbb/b$c$a$a;->c:Ljd/d;

    .line 13
    new-instance v1, Lfa/g$b;

    .line 14
    iget-object v2, p0, Lbb/b$c$a$a;->b:Lfa/b$c;

    .line 15
    iget-object v2, v2, Lfa/b$c;->j:Lfb/c;

    .line 16
    invoke-direct {v1, v2, p1}, Lfa/g$b;-><init>(Lfb/c;[B)V

    invoke-interface {v0, v1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lbb/b$c$a$a;->c:Ljd/d;

    new-instance v2, Lfa/g$c;

    invoke-direct {v2, v0, v1}, Lfa/g$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lbb/b$c$a$a;->c:Ljd/d;

    new-instance v1, Lfa/g$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lfa/g$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
