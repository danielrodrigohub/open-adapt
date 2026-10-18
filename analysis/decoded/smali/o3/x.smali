.class public final synthetic Lo3/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Lo3/b$a;

.field public final synthetic c:Lp4/r;

.field public final synthetic d:Lp4/u;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;Lp4/r;Lp4/u;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/x;->b:Lo3/b$a;

    iput-object p2, p0, Lo3/x;->c:Lp4/r;

    iput-object p3, p0, Lo3/x;->d:Lp4/u;

    iput-object p4, p0, Lo3/x;->e:Ljava/io/IOException;

    iput-boolean p5, p0, Lo3/x;->f:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo3/x;->d:Lp4/u;

    check-cast p1, Lo3/b;

    invoke-interface {p1, v0}, Lo3/b;->J0(Lp4/u;)V

    return-void
.end method
