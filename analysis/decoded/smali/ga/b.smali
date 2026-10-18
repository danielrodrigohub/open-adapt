.class public final enum Lga/b;
.super Ljava/lang/Enum;
.source "AdaptKitGestureConfigurationResponse.kt"

# interfaces
.implements Leb/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lga/b;",
        ">;",
        "Leb/d;"
    }
.end annotation


# static fields
.field public static final enum i:Lga/b;

.field public static final enum j:Lga/b;

.field public static final enum k:Lga/b;

.field public static final enum l:Lga/b;

.field public static final synthetic m:[Lga/b;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lga/b;

    const-string v1, "CRITICAL_BATTERY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lga/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lga/b;->i:Lga/b;

    .line 2
    new-instance v1, Lga/b;

    const-string v3, "ACTIVE_SESSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lga/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lga/b;->j:Lga/b;

    .line 3
    new-instance v3, Lga/b;

    const-string v5, "CONFIG_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lga/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lga/b;->k:Lga/b;

    .line 4
    new-instance v5, Lga/b;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lga/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lga/b;->l:Lga/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lga/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lga/b;->m:[Lga/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lga/b;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lga/b;
    .locals 1

    const-class v0, Lga/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lga/b;

    return-object p0
.end method

.method public static values()[Lga/b;
    .locals 1

    sget-object v0, Lga/b;->m:[Lga/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lga/b;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lga/b;->h:Ljava/lang/String;

    const-string v1, "GestureConfigurationResponse ["

    const-string v2, "]"

    .line 2
    invoke-static {v1, v0, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgd/q;->h:Lgd/q;

    return-object v0
.end method
