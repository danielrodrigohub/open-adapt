.class public final enum Lhc/m0$a;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhc/m0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lhc/m0$a;

.field public static final enum j:Lhc/m0$a;

.field public static final enum k:Lhc/m0$a;

.field public static final enum l:Lhc/m0$a;

.field public static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lhc/m0$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic n:[Lhc/m0$a;


# instance fields
.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lhc/m0$a;

    const-string v1, "REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lhc/m0$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhc/m0$a;->i:Lhc/m0$a;

    .line 2
    new-instance v1, Lhc/m0$a;

    const-string v3, "ACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lhc/m0$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lhc/m0$a;->j:Lhc/m0$a;

    .line 3
    new-instance v3, Lhc/m0$a;

    const-string v5, "NAK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lhc/m0$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lhc/m0$a;->k:Lhc/m0$a;

    .line 4
    new-instance v5, Lhc/m0$a;

    const-string v7, "EVENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lhc/m0$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lhc/m0$a;->l:Lhc/m0$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lhc/m0$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lhc/m0$a;->n:[Lhc/m0$a;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhc/m0$a;->m:Ljava/util/HashMap;

    .line 7
    const-class v0, Lhc/m0$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhc/m0$a;

    .line 8
    sget-object v2, Lhc/m0$a;->m:Ljava/util/HashMap;

    iget v3, v1, Lhc/m0$a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lhc/m0$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhc/m0$a;
    .locals 1

    const-class v0, Lhc/m0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhc/m0$a;

    return-object p0
.end method

.method public static values()[Lhc/m0$a;
    .locals 1

    sget-object v0, Lhc/m0$a;->n:[Lhc/m0$a;

    invoke-virtual {v0}, [Lhc/m0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhc/m0$a;

    return-object v0
.end method
