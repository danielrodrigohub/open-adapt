.class public final enum La7/h;
.super Ljava/lang/Enum;
.source "HashType.java"

# interfaces
.implements Lb7/z$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La7/h;",
        ">;",
        "Lb7/z$a;"
    }
.end annotation


# static fields
.field public static final enum i:La7/h;

.field public static final enum j:La7/h;

.field public static final enum k:La7/h;

.field public static final enum l:La7/h;

.field public static final enum m:La7/h;

.field public static final enum n:La7/h;

.field public static final synthetic o:[La7/h;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, La7/h;

    const-string v1, "UNKNOWN_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, La7/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, La7/h;->i:La7/h;

    .line 2
    new-instance v1, La7/h;

    const-string v3, "SHA1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, La7/h;-><init>(Ljava/lang/String;II)V

    sput-object v1, La7/h;->j:La7/h;

    .line 3
    new-instance v3, La7/h;

    const-string v5, "SHA384"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, La7/h;-><init>(Ljava/lang/String;II)V

    sput-object v3, La7/h;->k:La7/h;

    .line 4
    new-instance v5, La7/h;

    const-string v7, "SHA256"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, La7/h;-><init>(Ljava/lang/String;II)V

    sput-object v5, La7/h;->l:La7/h;

    .line 5
    new-instance v7, La7/h;

    const-string v9, "SHA512"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, La7/h;-><init>(Ljava/lang/String;II)V

    sput-object v7, La7/h;->m:La7/h;

    .line 6
    new-instance v9, La7/h;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, La7/h;-><init>(Ljava/lang/String;II)V

    sput-object v9, La7/h;->n:La7/h;

    const/4 v11, 0x6

    new-array v11, v11, [La7/h;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, La7/h;->o:[La7/h;

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
    iput p3, p0, La7/h;->h:I

    return-void
.end method

.method public static b(I)La7/h;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, La7/h;->m:La7/h;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, La7/h;->l:La7/h;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, La7/h;->k:La7/h;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, La7/h;->j:La7/h;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, La7/h;->i:La7/h;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)La7/h;
    .locals 1

    const-class v0, La7/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La7/h;

    return-object p0
.end method

.method public static values()[La7/h;
    .locals 1

    sget-object v0, La7/h;->o:[La7/h;

    invoke-virtual {v0}, [La7/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La7/h;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, La7/h;->n:La7/h;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, La7/h;->h:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
