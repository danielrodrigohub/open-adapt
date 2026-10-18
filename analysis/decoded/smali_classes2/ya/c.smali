.class public final synthetic Lya/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lya/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lya/c;

    invoke-direct {v0}, Lya/c;-><init>()V

    sput-object v0, Lya/c;->a:Lya/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lya/h0;

    invoke-virtual {p1}, Lya/h0;->p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "createAnimation"

    invoke-static {p1, v0}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
