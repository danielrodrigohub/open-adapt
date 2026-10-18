.class public final Lfb/s$a;
.super Lya/h0;
.source "SessionDownload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfb/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/h0<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Lfb/s$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lv9/a;

.field public final synthetic o:Lfb/s;


# direct methods
.method public constructor <init>(Lfb/s;Ljava/lang/String;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lqd/l<",
            "-",
            "Lfb/s$a;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfb/s$a;->o:Lfb/s;

    .line 2
    invoke-direct {p0}, Lya/h0;-><init>()V

    .line 3
    iget-object v0, p1, Lfb/s;->b:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lfb/s;->c:Lla/b;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfb/s$a;->l:Ljava/lang/String;

    .line 6
    new-instance p1, Lfb/s$a$a;

    invoke-direct {p1, p3, p0}, Lfb/s$a$a;-><init>(Lqd/l;Lfb/s$a;)V

    iput-object p1, p0, Lfb/s$a;->m:Lfb/s$a$a;

    .line 7
    new-instance p1, Lv9/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    const-string p3, "randomUUID()"

    invoke-static {p2, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lv9/a;-><init>(Ljava/util/UUID;)V

    iput-object p1, p0, Lfb/s$a;->n:Lv9/a;

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfb/s$a;->o:Lfb/s;

    .line 2
    iget-object v0, v0, Lfb/s;->g:Lqd/l;

    .line 3
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lfb/s$a;->n:Lv9/a;

    return-object v0
.end method

.method public final o()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfb/s$a;->m:Lfb/s$a$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfb/s$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final u()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lfd/o;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
