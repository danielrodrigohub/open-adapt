.class public final Lcom/nike/persistence/implementation/PersistenceManager$Settings;
.super Ljava/lang/Object;
.source "PersistenceManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/persistence/implementation/PersistenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/persistence/implementation/PersistenceManager$Settings$Companion;,
        Lcom/nike/persistence/implementation/PersistenceManager$Settings$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/nike/persistence/implementation/PersistenceManager$Settings$Companion;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/persistence/implementation/PersistenceManager$Settings$Companion;

    invoke-direct {v0}, Lcom/nike/persistence/implementation/PersistenceManager$Settings$Companion;-><init>()V

    sput-object v0, Lcom/nike/persistence/implementation/PersistenceManager$Settings;->Companion:Lcom/nike/persistence/implementation/PersistenceManager$Settings$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/nike/persistence/implementation/PersistenceManager$Settings$$serializer;->INSTANCE:Lcom/nike/persistence/implementation/PersistenceManager$Settings$$serializer;

    invoke-virtual {v0}, Lcom/nike/persistence/implementation/PersistenceManager$Settings$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nike/persistence/implementation/PersistenceManager$Settings;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/nike/persistence/implementation/PersistenceManager$Settings;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/persistence/implementation/PersistenceManager$Settings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/persistence/implementation/PersistenceManager$Settings;

    iget-object v1, p0, Lcom/nike/persistence/implementation/PersistenceManager$Settings;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/nike/persistence/implementation/PersistenceManager$Settings;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nike/persistence/implementation/PersistenceManager$Settings;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Settings(sessionID="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nike/persistence/implementation/PersistenceManager$Settings;->a:Ljava/lang/String;

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, La0/d;->d(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
