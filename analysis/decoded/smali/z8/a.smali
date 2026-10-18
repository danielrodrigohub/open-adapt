.class public final enum Lz8/a;
.super Ljava/lang/Enum;
.source "LightPack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz8/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz8/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final l:Lz8/a$a;

.field public static final enum m:Lz8/a;

.field public static final enum n:Lz8/a;

.field public static final enum o:Lz8/a;

.field public static final enum p:Lz8/a;

.field public static final enum q:Lz8/a;

.field public static final synthetic r:[Lz8/a;


# instance fields
.field public final h:I

.field public final i:Ljava/lang/Integer;

.field public final j:I

.field public final k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lz8/a;

    const-string v1, "MY_LIGHTS"

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x0

    const v5, 0x7f11037a

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lz8/a;-><init>(Ljava/lang/String;IILjava/lang/Integer;ILjava/lang/String;)V

    sput-object v7, Lz8/a;->m:Lz8/a;

    .line 2
    new-instance v0, Lz8/a;

    const v1, 0x7f080102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v9, "NIKE_MAG"

    const/4 v10, 0x1

    const/16 v11, 0x65

    const v13, 0x7f11037b

    const-string v14, "nikemag.json"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lz8/a;-><init>(Ljava/lang/String;IILjava/lang/Integer;ILjava/lang/String;)V

    sput-object v0, Lz8/a;->n:Lz8/a;

    .line 3
    new-instance v1, Lz8/a;

    const v2, 0x7f080101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v16, "COLOR_STRIKE"

    const/16 v17, 0x2

    const/16 v18, 0x66

    const v20, 0x7f110378

    const-string v21, "colorstrike.json"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lz8/a;-><init>(Ljava/lang/String;IILjava/lang/Integer;ILjava/lang/String;)V

    sput-object v1, Lz8/a;->o:Lz8/a;

    .line 4
    new-instance v2, Lz8/a;

    const v3, 0x7f080100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v9, "BREATHE"

    const/4 v10, 0x3

    const/16 v11, 0x67

    const v13, 0x7f110377

    const-string v14, "breathe.json"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lz8/a;-><init>(Ljava/lang/String;IILjava/lang/Integer;ILjava/lang/String;)V

    sput-object v2, Lz8/a;->p:Lz8/a;

    .line 5
    new-instance v3, Lz8/a;

    const v4, 0x7f0800ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v16, "BE_TRUE"

    const/16 v17, 0x4

    const/16 v18, 0x68

    const v20, 0x7f110376

    const-string v21, "betrue.json"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lz8/a;-><init>(Ljava/lang/String;IILjava/lang/Integer;ILjava/lang/String;)V

    sput-object v3, Lz8/a;->q:Lz8/a;

    const/4 v4, 0x5

    new-array v4, v4, [Lz8/a;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    sput-object v4, Lz8/a;->r:[Lz8/a;

    new-instance v0, Lz8/a$a;

    invoke-direct {v0}, Lz8/a$a;-><init>()V

    sput-object v0, Lz8/a;->l:Lz8/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Integer;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lz8/a;->h:I

    iput-object p4, p0, Lz8/a;->i:Ljava/lang/Integer;

    iput p5, p0, Lz8/a;->j:I

    iput-object p6, p0, Lz8/a;->k:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz8/a;
    .locals 1

    const-class v0, Lz8/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz8/a;

    return-object p0
.end method

.method public static values()[Lz8/a;
    .locals 1

    sget-object v0, Lz8/a;->r:[Lz8/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz8/a;

    return-object v0
.end method
