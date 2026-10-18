.class public final Loa/a;
.super Ljava/lang/Object;
.source "AdaptKitRestClient.kt"

# interfaces
.implements Loa/b;


# static fields
.field public static final b:Loa/a;

.field public static c:Lpa/c;

.field public static d:Lra/e;

.field public static final e:Lfd/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Loa/a;

    invoke-direct {v0}, Loa/a;-><init>()V

    sput-object v0, Loa/a;->b:Loa/a;

    .line 1
    new-instance v0, Loa/a$b;

    invoke-direct {v0}, Loa/a$b;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    .line 2
    sput-object v0, Loa/a;->e:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lra/d;
    .locals 3

    .line 1
    sget-object v0, Loa/a;->d:Lra/e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Loa/a;->e:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    const-string v1, "okHttpClient"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lra/e;->d:Lra/e;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://api.nike.com"

    .line 6
    iput-object v2, v1, Lna/b;->b:Ljava/lang/String;

    .line 7
    iput-object v0, v1, Lna/b;->a:Lokhttp3/OkHttpClient;

    .line 8
    sput-object v1, Loa/a;->d:Lra/e;

    move-object v0, v1

    :cond_0
    return-object v0
.end method
