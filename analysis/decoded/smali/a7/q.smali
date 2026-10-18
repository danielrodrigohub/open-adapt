.class public final La7/q;
.super Lb7/x;
.source "RegistryConfig.java"

# interfaces
.implements Lb7/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb7/x<",
        "La7/q;",
        "La7/q$a;",
        ">;",
        "Lb7/r0;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONFIG_NAME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:La7/q;

.field public static final ENTRY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lb7/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/y0<",
            "La7/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configName_:Ljava/lang/String;

.field private entry_:Lb7/z$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/z$c<",
            "La7/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7/q;

    invoke-direct {v0}, La7/q;-><init>()V

    .line 2
    sput-object v0, La7/q;->DEFAULT_INSTANCE:La7/q;

    .line 3
    const-class v1, La7/q;

    invoke-static {v1, v0}, Lb7/x;->w(Ljava/lang/Class;Lb7/x;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb7/x;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, La7/q;->configName_:Ljava/lang/String;

    .line 3
    sget-object v0, Lb7/b1;->k:Lb7/b1;

    .line 4
    iput-object v0, p0, La7/q;->entry_:Lb7/z$c;

    return-void
.end method

.method public static synthetic x()La7/q;
    .locals 1

    sget-object v0, La7/q;->DEFAULT_INSTANCE:La7/q;

    return-object v0
.end method


# virtual methods
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
    sget-object p1, La7/q;->PARSER:Lb7/y0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, La7/q;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, La7/q;->PARSER:Lb7/y0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lb7/x$b;

    sget-object v1, La7/q;->DEFAULT_INSTANCE:La7/q;

    invoke-direct {p1, v1}, Lb7/x$b;-><init>(Lb7/x;)V

    .line 7
    sput-object p1, La7/q;->PARSER:Lb7/y0;

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
    sget-object p1, La7/q;->DEFAULT_INSTANCE:La7/q;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, La7/q$a;

    invoke-direct {p1}, La7/q$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, La7/q;

    invoke-direct {p1}, La7/q;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "configName_"

    aput-object v2, p1, v1

    const-string v1, "entry_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    .line 12
    const-class v1, La7/m;

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 13
    sget-object v1, La7/q;->DEFAULT_INSTANCE:La7/q;

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

    nop

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
