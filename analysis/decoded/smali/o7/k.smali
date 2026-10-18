.class public final Lo7/k;
.super Ljava/lang/Object;
.source "BigfootApplication.kt"

# interfaces
.implements Lv9/c;


# instance fields
.field public final a:Lo7/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo7/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo7/k$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo7/k$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nike/adapt/BigfootApplication;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo7/k$b;

    invoke-direct {v0, p1}, Lo7/k$b;-><init>(Lcom/nike/adapt/BigfootApplication;)V

    .line 2
    iput-object v0, p0, Lo7/k;->a:Lo7/k$b;

    .line 3
    sget-object p1, Lo7/k$a;->h:Lo7/k$a;

    .line 4
    iput-object p1, p0, Lo7/k;->b:Lo7/k$a;

    .line 5
    sget-object p1, Lo7/k$d;->h:Lo7/k$d;

    .line 6
    iput-object p1, p0, Lo7/k;->c:Lo7/k$d;

    .line 7
    sget-object p1, Lo7/k$c;->h:Lo7/k$c;

    .line 8
    iput-object p1, p0, Lo7/k;->d:Lo7/k$c;

    return-void
.end method


# virtual methods
.method public final a()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo7/k;->c:Lo7/k$d;

    return-object v0
.end method

.method public final b()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo7/k;->b:Lo7/k$a;

    return-object v0
.end method

.method public final c()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo7/k;->d:Lo7/k$c;

    return-object v0
.end method

.method public final d()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo7/k;->a:Lo7/k$b;

    return-object v0
.end method
