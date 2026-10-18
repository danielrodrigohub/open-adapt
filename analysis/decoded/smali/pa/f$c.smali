.class public final Lpa/f$c;
.super Lrd/o;
.source "AdaptKitExecutor.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/f;->c(Ljava/util/List;Lta/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lta/a;

.field public final synthetic i:Lta/a;

.field public final synthetic j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lta/a;Lta/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lpa/f$c;->h:Lta/a;

    iput-object p2, p0, Lpa/f$c;->i:Lta/a;

    iput-object p3, p0, Lpa/f$c;->j:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/f$c;->i:Lta/a;

    .line 2
    sget-object v1, Loa/a;->b:Loa/a;

    .line 3
    sget-object v1, Loa/a;->c:Lpa/c;

    if-nez v1, :cond_0

    .line 4
    sget-object v1, Loa/a;->e:Lfd/d;

    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/OkHttpClient;

    const-string v2, "okHttpClient"

    .line 5
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lpa/c;->d:Lpa/c;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "https://api.nike.com"

    .line 8
    iput-object v3, v2, Lna/b;->b:Ljava/lang/String;

    .line 9
    iput-object v1, v2, Lna/b;->a:Lokhttp3/OkHttpClient;

    .line 10
    sput-object v2, Loa/a;->c:Lpa/c;

    move-object v1, v2

    .line 11
    :cond_0
    iget-object v2, p0, Lpa/f$c;->j:Ljava/util/List;

    invoke-virtual {v1, v2}, Lpa/c;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lta/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lpa/f$c;->h:Lta/a;

    invoke-interface {v1, v0}, Lta/a;->b(Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
