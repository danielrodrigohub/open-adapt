.class public final Lee/c;
.super Lrd/o;
.source "ResourceFileSystem.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lee/f;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lee/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lee/c;

    invoke-direct {v0}, Lee/c;-><init>()V

    sput-object v0, Lee/c;->h:Lee/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lee/f;

    const-string v0, "entry"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lee/d;->b:Lee/d$a;

    sget-object v0, Lee/d;->b:Lee/d$a;

    .line 4
    iget-object p1, p1, Lee/f;->a:Lde/a0;

    .line 5
    invoke-static {p1}, Lee/d$a;->a(Lde/a0;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
