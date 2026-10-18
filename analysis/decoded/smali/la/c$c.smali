.class public final enum Lla/c$c;
.super Ljava/lang/Enum;
.source "AdaptKitSessionInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lla/c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lla/c$c;

.field public static final enum j:Lla/c$c;

.field public static final enum k:Lla/c$c;

.field public static final enum l:Lla/c$c;

.field public static final synthetic m:[Lla/c$c;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lla/c$c;

    const-string v1, "SESSION_ACTIVE"

    const/4 v2, 0x0

    const-string v3, "ACTIVE"

    invoke-direct {v0, v1, v2, v3}, Lla/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lla/c$c;->i:Lla/c$c;

    .line 2
    new-instance v1, Lla/c$c;

    const-string v3, "SESSION_PAUSED"

    const/4 v4, 0x1

    const-string v5, "PAUSED"

    invoke-direct {v1, v3, v4, v5}, Lla/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lla/c$c;->j:Lla/c$c;

    .line 3
    new-instance v3, Lla/c$c;

    const-string v5, "SESSION_ENDED"

    const/4 v6, 0x2

    const-string v7, "ENDED"

    invoke-direct {v3, v5, v6, v7}, Lla/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lla/c$c;->k:Lla/c$c;

    .line 4
    new-instance v5, Lla/c$c;

    const-string v7, "SESSION_INVALID"

    const/4 v8, 0x3

    const-string v9, "INVALID"

    invoke-direct {v5, v7, v8, v9}, Lla/c$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lla/c$c;->l:Lla/c$c;

    const/4 v7, 0x4

    new-array v7, v7, [Lla/c$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lla/c$c;->m:[Lla/c$c;

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

    iput-object p3, p0, Lla/c$c;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lla/c$c;
    .locals 1

    const-class v0, Lla/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lla/c$c;

    return-object p0
.end method

.method public static values()[Lla/c$c;
    .locals 1

    sget-object v0, Lla/c$c;->m:[Lla/c$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lla/c$c;

    return-object v0
.end method
