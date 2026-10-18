.class public final La7/n$b;
.super Lb7/x;
.source "Keyset.java"

# interfaces
.implements Lb7/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/n$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb7/x<",
        "La7/n$b;",
        "La7/n$b$a;",
        ">;",
        "Lb7/r0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:La7/n$b;

.field public static final KEY_DATA_FIELD_NUMBER:I = 0x1

.field public static final KEY_ID_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lb7/y0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/y0<",
            "La7/n$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private keyData_:La7/j;

.field private keyId_:I

.field private outputPrefixType_:I

.field private status_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7/n$b;

    invoke-direct {v0}, La7/n$b;-><init>()V

    .line 2
    sput-object v0, La7/n$b;->DEFAULT_INSTANCE:La7/n$b;

    .line 3
    const-class v1, La7/n$b;

    invoke-static {v1, v0}, Lb7/x;->w(Ljava/lang/Class;Lb7/x;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb7/x;-><init>()V

    return-void
.end method

.method public static A(La7/n$b;)V
    .locals 1

    sget-object v0, La7/k;->j:La7/k;

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, La7/k;->a()I

    move-result v0

    iput v0, p0, La7/n$b;->status_:I

    return-void
.end method

.method public static B(La7/n$b;I)V
    .locals 0

    iput p1, p0, La7/n$b;->keyId_:I

    return-void
.end method

.method public static H()La7/n$b$a;
    .locals 1

    sget-object v0, La7/n$b;->DEFAULT_INSTANCE:La7/n$b;

    invoke-virtual {v0}, Lb7/x;->n()Lb7/x$a;

    move-result-object v0

    check-cast v0, La7/n$b$a;

    return-object v0
.end method

.method public static synthetic x()La7/n$b;
    .locals 1

    sget-object v0, La7/n$b;->DEFAULT_INSTANCE:La7/n$b;

    return-object v0
.end method

.method public static y(La7/n$b;La7/j;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, La7/n$b;->keyData_:La7/j;

    return-void
.end method

.method public static z(La7/n$b;La7/p;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, La7/p;->a()I

    move-result p1

    iput p1, p0, La7/n$b;->outputPrefixType_:I

    return-void
.end method


# virtual methods
.method public final C()La7/j;
    .locals 1

    iget-object v0, p0, La7/n$b;->keyData_:La7/j;

    if-nez v0, :cond_0

    invoke-static {}, La7/j;->B()La7/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, La7/n$b;->keyId_:I

    return v0
.end method

.method public final E()La7/p;
    .locals 1

    .line 1
    iget v0, p0, La7/n$b;->outputPrefixType_:I

    invoke-static {v0}, La7/p;->b(I)La7/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, La7/p;->n:La7/p;

    :cond_0
    return-object v0
.end method

.method public final F()La7/k;
    .locals 1

    .line 1
    iget v0, p0, La7/n$b;->status_:I

    invoke-static {v0}, La7/k;->b(I)La7/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, La7/k;->m:La7/k;

    :cond_0
    return-object v0
.end method

.method public final G()Z
    .locals 1

    iget-object v0, p0, La7/n$b;->keyData_:La7/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o(Lb7/x$f;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, La7/n$b;->PARSER:Lb7/y0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, La7/n$b;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, La7/n$b;->PARSER:Lb7/y0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lb7/x$b;

    sget-object v1, La7/n$b;->DEFAULT_INSTANCE:La7/n$b;

    invoke-direct {p1, v1}, Lb7/x$b;-><init>(Lb7/x;)V

    .line 7
    sput-object p1, La7/n$b;->PARSER:Lb7/y0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, La7/n$b;->DEFAULT_INSTANCE:La7/n$b;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, La7/n$b$a;

    .line 11
    invoke-direct {p1}, La7/n$b$a;-><init>()V

    return-object p1

    .line 12
    :pswitch_3
    new-instance p1, La7/n$b;

    invoke-direct {p1}, La7/n$b;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "keyData_"

    aput-object v2, p1, v1

    const-string v1, "status_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "keyId_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "outputPrefixType_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 13
    sget-object v1, La7/n$b;->DEFAULT_INSTANCE:La7/n$b;

    .line 14
    new-instance v2, Lb7/c1;

    invoke-direct {v2, v1, v0, p1}, Lb7/c1;-><init>(Lb7/q0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 15
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
