.class public final enum Lua/a;
.super Ljava/lang/Enum;
.source "NetworkMarshaler.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lua/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lua/a;

.field public static final enum i:Lua/a;

.field public static final enum j:Lua/a;

.field public static final enum k:Lua/a;

.field public static final synthetic l:[Lua/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lua/a;

    const-string v1, "NOT_FOUND_LOCALLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lua/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lua/a;->h:Lua/a;

    .line 2
    new-instance v1, Lua/a;

    const-string v3, "UPDATE_REQUIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lua/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lua/a;->i:Lua/a;

    .line 3
    new-instance v3, Lua/a;

    const-string v5, "NO_CHANGES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lua/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lua/a;->j:Lua/a;

    .line 4
    new-instance v5, Lua/a;

    const-string v7, "SCHEDULED_FOR_DELETION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lua/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lua/a;->k:Lua/a;

    const/4 v7, 0x4

    new-array v7, v7, [Lua/a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lua/a;->l:[Lua/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lua/a;
    .locals 1

    const-class v0, Lua/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lua/a;

    return-object p0
.end method

.method public static values()[Lua/a;
    .locals 1

    sget-object v0, Lua/a;->l:[Lua/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lua/a;

    return-object v0
.end method
