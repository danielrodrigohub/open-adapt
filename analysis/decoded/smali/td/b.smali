.class public final Ltd/b;
.super Ltd/a;
.source "PlatformRandom.kt"


# instance fields
.field public final j:Ltd/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltd/a;-><init>()V

    .line 2
    new-instance v0, Ltd/b$a;

    invoke-direct {v0}, Ltd/b$a;-><init>()V

    iput-object v0, p0, Ltd/b;->j:Ltd/b$a;

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Random;
    .locals 2

    iget-object v0, p0, Ltd/b;->j:Ltd/b$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
