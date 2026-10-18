.class public final Led/a;
.super Ljava/lang/Object;
.source "Attribute.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Led/a$a;
    }
.end annotation


# static fields
.field public static final b:Led/a$a;

.field public static final c:Led/a;

.field public static final d:Led/a;

.field public static final e:Led/a;

.field public static final f:Led/a;

.field public static final g:Led/a;

.field public static final h:Led/a;

.field public static final i:Led/a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Led/a$a;

    invoke-direct {v0}, Led/a$a;-><init>()V

    sput-object v0, Led/a;->b:Led/a$a;

    .line 1
    new-instance v0, Led/a;

    const-string v1, "authType"

    invoke-direct {v0, v1}, Led/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/a;->c:Led/a;

    .line 2
    new-instance v0, Led/a;

    const-string v1, "errorDescription"

    invoke-direct {v0, v1}, Led/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/a;->d:Led/a;

    .line 3
    new-instance v0, Led/a;

    const-string v1, "libraryName"

    invoke-direct {v0, v1}, Led/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/a;->e:Led/a;

    .line 4
    new-instance v0, Led/a;

    const-string v1, "libraryVersion"

    invoke-direct {v0, v1}, Led/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/a;->f:Led/a;

    .line 5
    new-instance v0, Led/a;

    const-string v1, "method"

    invoke-direct {v0, v1}, Led/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/a;->g:Led/a;

    .line 6
    new-instance v0, Led/a;

    const-string v1, "responseCode"

    invoke-direct {v0, v1}, Led/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/a;->h:Led/a;

    .line 7
    new-instance v0, Led/a;

    const-string v1, "state"

    invoke-direct {v0, v1}, Led/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/a;->i:Led/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Led/a;->a:Ljava/lang/String;

    return-object v0
.end method
