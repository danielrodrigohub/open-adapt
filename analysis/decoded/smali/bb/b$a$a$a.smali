.class public final Lbb/b$a$a$a;
.super Ljava/lang/Object;
.source "AdaptKitFirmwareRepository.kt"

# interfaces
.implements Lta/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lta/a<",
        "Lva/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Lfa/b;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lfb/c;


# direct methods
.method public constructor <init>(Ljd/d;Lfb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfa/b;",
            ">;",
            "Lfb/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lbb/b$a$a$a;->a:Ljd/d;

    iput-object p2, p0, Lbb/b$a$a$a;->b:Lfb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lva/a;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbb/b$a$a$a;->a:Ljd/d;

    sget v1, Lfa/b;->a:I

    iget-object v3, p0, Lbb/b$a$a$a;->b:Lfb/c;

    const-string v1, "currentVersion"

    .line 4
    invoke-static {v3, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-boolean v4, p1, Lva/a;->h:Z

    .line 6
    iget-object v1, p1, Lva/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7
    new-instance v2, Lfb/c;

    invoke-direct {v2, v1}, Lfb/c;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v5, v1

    .line 8
    :goto_0
    iget-boolean v6, p1, Lva/a;->j:Z

    .line 9
    iget-boolean v7, p1, Lva/a;->k:Z

    .line 10
    iget-object v8, p1, Lva/a;->l:Ljava/lang/String;

    .line 11
    iget-object v9, p1, Lva/a;->m:Ljava/lang/String;

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_2

    .line 12
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    if-eqz v9, :cond_3

    invoke-static {v9}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move p1, v1

    :cond_4
    if-nez p1, :cond_5

    .line 13
    new-instance p1, Lfa/b$c;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lfa/b$c;-><init>(Lfb/c;ZLfb/c;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    .line 14
    new-instance p1, Lfa/b$a;

    const-string v1, "updatedVersion or md5 or url not present"

    invoke-direct {p1, v3, v1}, Lfa/b$a;-><init>(Lfb/c;Ljava/lang/String;)V

    goto :goto_3

    .line 15
    :cond_6
    new-instance p1, Lfa/b$b;

    invoke-direct {p1, v3}, Lfa/b$b;-><init>(Lfb/c;)V

    .line 16
    :goto_3
    invoke-interface {v0, p1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbb/b$a$a$a;->a:Ljd/d;

    .line 2
    new-instance v1, Lfa/b$a;

    .line 3
    iget-object v2, p0, Lbb/b$a$a$a;->b:Lfb/c;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v1, v2, p1}, Lfa/b$a;-><init>(Lfb/c;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
