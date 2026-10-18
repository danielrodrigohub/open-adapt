.class public final Lkotlinx/coroutines/GlobalScope;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/GlobalScope;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/GlobalScope;

    invoke-direct {v0}, Lkotlinx/coroutines/GlobalScope;-><init>()V

    sput-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ljd/f;
    .locals 1

    sget-object v0, Ljd/h;->h:Ljd/h;

    return-object v0
.end method
