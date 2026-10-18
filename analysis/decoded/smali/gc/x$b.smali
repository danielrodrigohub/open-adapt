.class public final enum Lgc/x$b;
.super Ljava/lang/Enum;
.source "messages.java"

# interfaces
.implements Lm7/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgc/x$b;",
        ">;",
        "Lm7/y$a;"
    }
.end annotation


# static fields
.field public static final enum i:Lgc/x$b;

.field public static final enum j:Lgc/x$b;

.field public static final enum k:Lgc/x$b;

.field public static final enum l:Lgc/x$b;

.field public static final enum m:Lgc/x$b;

.field public static final enum n:Lgc/x$b;

.field public static final enum o:Lgc/x$b;

.field public static final enum p:Lgc/x$b;

.field public static final enum q:Lgc/x$b;

.field public static final enum r:Lgc/x$b;

.field public static final enum s:Lgc/x$b;

.field public static final synthetic t:[Lgc/x$b;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lgc/x$b;

    const-string v1, "SERVO_HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgc/x$b;->i:Lgc/x$b;

    .line 2
    new-instance v1, Lgc/x$b;

    const-string v3, "SERVO_SHORT_SEGMENT_TIGHTEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgc/x$b;->j:Lgc/x$b;

    .line 3
    new-instance v3, Lgc/x$b;

    const-string v5, "SERVO_LONG_SEGMENT_TIGHTEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgc/x$b;->k:Lgc/x$b;

    .line 4
    new-instance v5, Lgc/x$b;

    const-string v7, "SERVO_SHORT_SEGMENT_LOOSEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgc/x$b;->l:Lgc/x$b;

    .line 5
    new-instance v7, Lgc/x$b;

    const-string v9, "SERVO_LONG_SEGMENT_LOOSEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgc/x$b;->m:Lgc/x$b;

    .line 6
    new-instance v9, Lgc/x$b;

    const-string v11, "SERVO_MAX_TIGHTEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgc/x$b;->n:Lgc/x$b;

    .line 7
    new-instance v11, Lgc/x$b;

    const-string v13, "SERVO_MAX_LOOSEN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgc/x$b;->o:Lgc/x$b;

    .line 8
    new-instance v13, Lgc/x$b;

    const-string v15, "SERVO_AUTOLACE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lgc/x$b;->p:Lgc/x$b;

    .line 9
    new-instance v15, Lgc/x$b;

    const-string v14, "SERVO_STOP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lgc/x$b;->q:Lgc/x$b;

    .line 10
    new-instance v14, Lgc/x$b;

    const-string v12, "SERVO_HUG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lgc/x$b;->r:Lgc/x$b;

    .line 11
    new-instance v12, Lgc/x$b;

    const-string v10, "UNRECOGNIZED"

    const/16 v8, 0xa

    const/4 v6, -0x1

    invoke-direct {v12, v10, v8, v6}, Lgc/x$b;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lgc/x$b;->s:Lgc/x$b;

    const/16 v6, 0xb

    new-array v6, v6, [Lgc/x$b;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v12, v6, v8

    .line 12
    sput-object v6, Lgc/x$b;->t:[Lgc/x$b;

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
    iput p3, p0, Lgc/x$b;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgc/x$b;
    .locals 1

    const-class v0, Lgc/x$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgc/x$b;

    return-object p0
.end method

.method public static values()[Lgc/x$b;
    .locals 1

    sget-object v0, Lgc/x$b;->t:[Lgc/x$b;

    invoke-virtual {v0}, [Lgc/x$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgc/x$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    sget-object v0, Lgc/x$b;->s:Lgc/x$b;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lgc/x$b;->h:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
