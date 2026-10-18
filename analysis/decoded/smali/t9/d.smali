.class public final enum Lt9/d;
.super Ljava/lang/Enum;
.source "SimpleAdaptConnectionState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt9/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lt9/d;

.field public static final enum i:Lt9/d;

.field public static final enum j:Lt9/d;

.field public static final synthetic k:[Lt9/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lt9/d;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt9/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt9/d;->h:Lt9/d;

    .line 2
    new-instance v1, Lt9/d;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lt9/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt9/d;->i:Lt9/d;

    .line 3
    new-instance v3, Lt9/d;

    const-string v5, "DISCONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lt9/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lt9/d;->j:Lt9/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lt9/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lt9/d;->k:[Lt9/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt9/d;
    .locals 1

    const-class v0, Lt9/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt9/d;

    return-object p0
.end method

.method public static values()[Lt9/d;
    .locals 1

    sget-object v0, Lt9/d;->k:[Lt9/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt9/d;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lt9/d;->h:Lt9/d;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
