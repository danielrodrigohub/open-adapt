.class public final synthetic Lo3/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Lo3/b$a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/s;->b:Lo3/b$a;

    iput-object p2, p0, Lo3/s;->c:Ljava/lang/String;

    iput-wide p3, p0, Lo3/s;->d:J

    iput-wide p5, p0, Lo3/s;->e:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1}, Lo3/b;->A0()V

    .line 2
    invoke-interface {p1}, Lo3/b;->R()V

    .line 3
    invoke-interface {p1}, Lo3/b;->m0()V

    return-void
.end method
