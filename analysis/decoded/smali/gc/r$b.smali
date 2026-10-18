.class public final enum Lgc/r$b;
.super Ljava/lang/Enum;
.source "messages.java"

# interfaces
.implements Lm7/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgc/r$b;",
        ">;",
        "Lm7/y$a;"
    }
.end annotation


# static fields
.field public static final enum i:Lgc/r$b;

.field public static final enum j:Lgc/r$b;

.field public static final enum k:Lgc/r$b;

.field public static final enum l:Lgc/r$b;

.field public static final enum m:Lgc/r$b;

.field public static final enum n:Lgc/r$b;

.field public static final enum o:Lgc/r$b;

.field public static final enum p:Lgc/r$b;

.field public static final enum q:Lgc/r$b;

.field public static final enum r:Lgc/r$b;

.field public static final synthetic s:[Lgc/r$b;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lgc/r$b;

    const-string v1, "FW_IMG_NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgc/r$b;->i:Lgc/r$b;

    .line 2
    new-instance v1, Lgc/r$b;

    const-string v3, "FW_IMG_BLANK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgc/r$b;->j:Lgc/r$b;

    .line 3
    new-instance v3, Lgc/r$b;

    const-string v5, "FW_IMG_PARTIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgc/r$b;->k:Lgc/r$b;

    .line 4
    new-instance v5, Lgc/r$b;

    const-string v7, "FW_IMG_REJECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgc/r$b;->l:Lgc/r$b;

    .line 5
    new-instance v7, Lgc/r$b;

    const-string v9, "FW_IMG_READY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgc/r$b;->m:Lgc/r$b;

    .line 6
    new-instance v9, Lgc/r$b;

    const-string v11, "FW_IMG_CURRENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgc/r$b;->n:Lgc/r$b;

    .line 7
    new-instance v11, Lgc/r$b;

    const-string v13, "FW_IMG_BAD_CHKSUM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgc/r$b;->o:Lgc/r$b;

    .line 8
    new-instance v13, Lgc/r$b;

    const-string v15, "FW_IMG_UPLOADING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lgc/r$b;->p:Lgc/r$b;

    .line 9
    new-instance v15, Lgc/r$b;

    const-string v14, "FW_IMG_NON_FUNC"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lgc/r$b;->q:Lgc/r$b;

    .line 10
    new-instance v14, Lgc/r$b;

    const-string v12, "UNRECOGNIZED"

    const/16 v10, 0x9

    const/4 v8, -0x1

    invoke-direct {v14, v12, v10, v8}, Lgc/r$b;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lgc/r$b;->r:Lgc/r$b;

    const/16 v8, 0xa

    new-array v8, v8, [Lgc/r$b;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    aput-object v14, v8, v10

    .line 11
    sput-object v8, Lgc/r$b;->s:[Lgc/r$b;

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
    iput p3, p0, Lgc/r$b;->h:I

    return-void
.end method

.method public static b(I)Lgc/r$b;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lgc/r$b;->q:Lgc/r$b;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lgc/r$b;->p:Lgc/r$b;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lgc/r$b;->o:Lgc/r$b;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lgc/r$b;->n:Lgc/r$b;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lgc/r$b;->m:Lgc/r$b;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lgc/r$b;->l:Lgc/r$b;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lgc/r$b;->k:Lgc/r$b;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lgc/r$b;->j:Lgc/r$b;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lgc/r$b;->i:Lgc/r$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lgc/r$b;
    .locals 1

    const-class v0, Lgc/r$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgc/r$b;

    return-object p0
.end method

.method public static values()[Lgc/r$b;
    .locals 1

    sget-object v0, Lgc/r$b;->s:[Lgc/r$b;

    invoke-virtual {v0}, [Lgc/r$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgc/r$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, Lgc/r$b;->r:Lgc/r$b;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lgc/r$b;->h:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
