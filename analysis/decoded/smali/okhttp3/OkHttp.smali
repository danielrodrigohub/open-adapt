.class public final Lokhttp3/OkHttp;
.super Ljava/lang/Object;
.source "OkHttp.kt"


# static fields
.field public static final INSTANCE:Lokhttp3/OkHttp;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/OkHttp;

    invoke-direct {v0}, Lokhttp3/OkHttp;-><init>()V

    sput-object v0, Lokhttp3/OkHttp;->INSTANCE:Lokhttp3/OkHttp;

    const-string v0, "5.0.0-alpha.10"

    sput-object v0, Lokhttp3/OkHttp;->VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getVERSION$annotations()V
    .locals 0

    return-void
.end method
